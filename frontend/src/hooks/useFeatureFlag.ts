import { useQuery } from '@tanstack/react-query';
import { supabase } from '../lib/supabase';

export function useFeatureFlag(flagName: string) {
  return useQuery({
    queryKey: ['feature-flag', flagName],
    queryFn: async () => {
      const { data, error } = await supabase
        .from('feature_flags')
        .select('enabled, rollout_percentage')
        .eq('name', flagName)
        .single();

      if (error) throw error;
      if (!data) return false;
      
      if (data.rollout_percentage < 100) {
        const userId = (await supabase.auth.getUser()).data.user?.id || '';
        const hash = userId.split('').reduce((acc, char) => acc + char.charCodeAt(0), 0);
        const userPercentile = hash % 100;
        return data.enabled && userPercentile < data.rollout_percentage;
      }
      
      return data.enabled;
    },
    staleTime: 5 * 60 * 1000,
  });
}
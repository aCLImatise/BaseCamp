version 1.0

task Humann2StrainProfiler {
  input {
    String inputInput
    String criticalCriticalMean
    String criticalCriticalCount
    String pP
    String criticalCriticalSamples
    String limitLimit
  }
  command <<<
    humann2_strain_profiler \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(criticalCriticalMean) then ("--critical_mean " +  '"' + criticalCriticalMean + '"') else ""} \
      ~{if defined(criticalCriticalCount) then ("--critical_count " +  '"' + criticalCriticalCount + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(criticalCriticalSamples) then ("--critical_samples " +  '"' + criticalCriticalSamples + '"') else ""} \
      ~{if defined(limitLimit) then ("--limit " +  '"' + limitLimit + '"') else ""}
  >>>
}
version 1.0

task PhyluceProbeRemoveOverlappingProbesGivenConfig {
  input {
    String probesProbes
    String configConfig
    String outputOutput
  }
  command <<<
    phyluce_probe_remove_overlapping_probes_given_config \
      ~{if defined(probesProbes) then ("--probes " +  '"' + probesProbes + '"') else ""} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}
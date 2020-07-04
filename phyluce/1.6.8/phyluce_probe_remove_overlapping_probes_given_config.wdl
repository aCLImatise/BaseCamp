version 1.0

task PhyluceProbeRemoveOverlappingProbesGivenConfig {
  input {
    String? probes
    String? config
    String? output_probe_file
  }
  command <<<
    phyluce_probe_remove_overlapping_probes_given_config \
      ~{if defined(probes) then ("--probes " +  '"' + probes + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(output_probe_file) then ("--output " +  '"' + output_probe_file + '"') else ""}
  >>>
  parameter_meta {
    probes: "The input probe file"
    config: "The input conf file of probes names to remove"
    output_probe_file: "The output probe file to write"
  }
}
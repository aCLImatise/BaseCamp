version 1.0

task PhyluceProbeRemoveOverlappingProbesGivenConfig {
  input {
    File? probes
    File? config
    File? output_probe_file
  }
  command <<<
    phyluce_probe_remove_overlapping_probes_given_config \
      ~{if defined(probes) then ("--probes " +  '"' + probes + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(output_probe_file) then ("--output " +  '"' + output_probe_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    probes: "The input probe file"
    config: "The input conf file of probes names to remove"
    output_probe_file: "The output probe file to write"
  }
  output {
    File out_stdout = stdout()
    File out_output_probe_file = "${in_output_probe_file}"
  }
}
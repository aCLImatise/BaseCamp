version 1.0

task ChromosomerFragmentmapbedOutput {
  input {
    String chromosome_r
    String fragment_map_bed
    String var_map
    String var_output
  }
  command <<<
    chromosomer fragmentmapbed output \
      ~{chromosome_r} \
      ~{fragment_map_bed} \
      ~{var_map} \
      ~{var_output}
  >>>
  parameter_meta {
    chromosome_r: ""
    fragment_map_bed: ""
    var_map: ""
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}
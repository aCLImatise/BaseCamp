version 1.0

task ChromosomerFragmentmapstatOutput {
  input {
    String chromosome_r
    String fragment_map_stat
    String var_map
    String var_output
  }
  command <<<
    chromosomer fragmentmapstat output \
      ~{chromosome_r} \
      ~{fragment_map_stat} \
      ~{var_map} \
      ~{var_output}
  >>>
  parameter_meta {
    chromosome_r: ""
    fragment_map_stat: ""
    var_map: ""
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}
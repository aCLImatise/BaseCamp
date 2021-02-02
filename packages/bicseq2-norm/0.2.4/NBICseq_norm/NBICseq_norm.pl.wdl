version 1.0

task NBICseqnormpl {
  input {
    String config_file
    String var_output
  }
  command <<<
    NBICseq_norm_pl \
      ~{config_file} \
      ~{var_output}
  >>>
  parameter_meta {
    config_file: ""
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}
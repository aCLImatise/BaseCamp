version 1.0

task NBICseqNorm.pl {
  input {
    String config_file
    String var_output
  }
  command <<<
    NBICseq-norm.pl \
      ~{config_file} \
      ~{var_output}
  >>>
  parameter_meta {
    config_file: ""
    var_output: ""
  }
}
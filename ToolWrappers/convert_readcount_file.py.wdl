version 1.0

task Convertreadcountfilepy {
  input {
    String rcn
  }
  command <<<
    convert_readcount_file_py \
      ~{rcn}
  >>>
  parameter_meta {
    rcn: ""
  }
  output {
    File out_stdout = stdout()
  }
}
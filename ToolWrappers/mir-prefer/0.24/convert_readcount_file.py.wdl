version 1.0

task Convertreadcountfilepy {
  input {
    String rcn
  }
  command <<<
    convert_readcount_file_py \
      ~{rcn}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    rcn: ""
  }
  output {
    File out_stdout = stdout()
  }
}
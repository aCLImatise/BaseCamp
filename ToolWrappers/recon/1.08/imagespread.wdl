version 1.0

task Imagespread {
  input {
    String seq_name_list
    String msp_list
  }
  command <<<
    imagespread \
      ~{seq_name_list} \
      ~{msp_list}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    seq_name_list: ""
    msp_list: ""
  }
  output {
    File out_stdout = stdout()
  }
}
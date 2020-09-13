version 1.0

task Eledef {
  input {
    String ele_def
    String seq_list
    String msp_file
    String method
    String cut_off
  }
  command <<<
    eledef \
      ~{ele_def} \
      ~{seq_list} \
      ~{msp_file} \
      ~{method} \
      ~{cut_off}
  >>>
  parameter_meta {
    ele_def: ""
    seq_list: ""
    msp_file: ""
    method: ""
    cut_off: ""
  }
  output {
    File out_stdout = stdout()
  }
}
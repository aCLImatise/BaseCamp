version 1.0

task EnasearchType {
  input {
    String ena_search
    String var_command
    String? args
  }
  command <<<
    enasearch type___ \
      ~{ena_search} \
      ~{var_command} \
      ~{args}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ena_search: ""
    var_command: ""
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}
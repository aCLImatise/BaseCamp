version 1.0

task DynalignIi {
  input {
    String? config
    File? var_file
  }
  command <<<
    dynalign_ii \
      ~{config} \
      ~{var_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    config: ""
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task DynalignIi {
  input {
    String? config
    File? file
  }
  command <<<
    dynalign_ii \
      ~{config} \
      ~{file}
  >>>
  parameter_meta {
    config: ""
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task Dynalignsmp {
  input {
    String dyn_align
    String? config
    File? var_file
  }
  command <<<
    dynalign_smp \
      ~{dyn_align} \
      ~{config} \
      ~{var_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dyn_align: ""
    config: ""
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task DynalignIismp {
  input {
    String dyn_align_ii
    String? config
    File? var_file
  }
  command <<<
    dynalign_ii_smp \
      ~{dyn_align_ii} \
      ~{config} \
      ~{var_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dyn_align_ii: ""
    config: ""
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}
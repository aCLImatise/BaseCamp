version 1.0

task DynalignIismp {
  input {
    String dyn_align_ii
    String? config
    File? file
  }
  command <<<
    dynalign_ii_smp \
      ~{dyn_align_ii} \
      ~{config} \
      ~{file}
  >>>
  parameter_meta {
    dyn_align_ii: ""
    config: ""
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}
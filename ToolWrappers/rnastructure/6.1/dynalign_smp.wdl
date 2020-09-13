version 1.0

task Dynalignsmp {
  input {
    String dyn_align
    String? config
    File? file
  }
  command <<<
    dynalign_smp \
      ~{dyn_align} \
      ~{config} \
      ~{file}
  >>>
  parameter_meta {
    dyn_align: ""
    config: ""
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}
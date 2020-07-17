version 1.0

task DynalignDotPlot {
  input {
    String dyn_align_save_file
    String output_file
  }
  command <<<
    DynalignDotPlot \
      ~{dyn_align_save_file} \
      ~{output_file}
  >>>
  parameter_meta {
    dyn_align_save_file: ""
    output_file: ""
  }
}
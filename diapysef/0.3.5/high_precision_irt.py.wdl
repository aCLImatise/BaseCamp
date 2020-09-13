version 1.0

task HighPrecisionIrtpy {
  input {
    String mq_out_dir
    String output_file
    String quality_cut_off
  }
  command <<<
    high_precision_irt_py \
      ~{mq_out_dir} \
      ~{output_file} \
      ~{quality_cut_off}
  >>>
  parameter_meta {
    mq_out_dir: ""
    output_file: ""
    quality_cut_off: ""
  }
  output {
    File out_stdout = stdout()
  }
}
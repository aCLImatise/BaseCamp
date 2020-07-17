version 1.0

task HighPrecisionIrt.py {
  input {
    String mq_out_dir
    String output_file
    String quality_cut_off
  }
  command <<<
    high_precision_irt.py \
      ~{mq_out_dir} \
      ~{output_file} \
      ~{quality_cut_off}
  >>>
  parameter_meta {
    mq_out_dir: ""
    output_file: ""
    quality_cut_off: ""
  }
}
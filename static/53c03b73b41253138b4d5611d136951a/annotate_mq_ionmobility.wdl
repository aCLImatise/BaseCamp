version 1.0

task AnnotateMqIonmobility.py {
  input {
    String mq_out_dir
    String pas_ef_analysis_dir
    String output_prefix
  }
  command <<<
    annotate_mq_ionmobility.py \
      ~{mq_out_dir} \
      ~{pas_ef_analysis_dir} \
      ~{output_prefix}
  >>>
  parameter_meta {
    mq_out_dir: ""
    pas_ef_analysis_dir: ""
    output_prefix: ""
  }
}
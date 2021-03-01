version 1.0

task AnnotateMqIonmobilitypy {
  input {
    String mq_out_dir
    String pas_ef_analysis_dir
    String output_prefix
  }
  command <<<
    annotate_mq_ionmobility_py \
      ~{mq_out_dir} \
      ~{pas_ef_analysis_dir} \
      ~{output_prefix}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mq_out_dir: ""
    pas_ef_analysis_dir: ""
    output_prefix: ""
  }
  output {
    File out_stdout = stdout()
  }
}
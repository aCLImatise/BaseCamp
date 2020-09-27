version 1.0

task SequanaLaneMerging {
  input {
    String se_quan_a_lane_fusion
    Int sample_id_l_zero_zero_one_dot_fast_q_do_tgz
  }
  command <<<
    sequana_lane_merging \
      ~{se_quan_a_lane_fusion} \
      ~{sample_id_l_zero_zero_one_dot_fast_q_do_tgz}
  >>>
  parameter_meta {
    se_quan_a_lane_fusion: "This searches for data stored in this format:\\n<sampleID_1>/*fastq.gz\\n<sampleID_2>/*fastq.gz\\n<sampleID_3>/*fastq.gz"
    sample_id_l_zero_zero_one_dot_fast_q_do_tgz: "sampleID_L002_.fastq.gz"
  }
  output {
    File out_stdout = stdout()
  }
}
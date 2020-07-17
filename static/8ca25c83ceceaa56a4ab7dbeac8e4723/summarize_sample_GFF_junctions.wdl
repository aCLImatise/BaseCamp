version 1.0

task SummarizeSampleGFFJunctions.pyOutputPrefix {
  input {
    String summarize_sample_gff_junctions_do_tpy
    String config
    String output_prefix
  }
  command <<<
    summarize_sample_GFF_junctions.py output_prefix \
      ~{summarize_sample_gff_junctions_do_tpy} \
      ~{config} \
      ~{output_prefix}
  >>>
  parameter_meta {
    summarize_sample_gff_junctions_do_tpy: ""
    config: ""
    output_prefix: ""
  }
}
version 1.0

task SummarizeSampleGFFJunctionspyOutputPrefix {
  input {
    String summarize_sample_gff_junctions_do_tpy
    String config
    String output_prefix
  }
  command <<<
    summarize_sample_GFF_junctions_py output_prefix \
      ~{summarize_sample_gff_junctions_do_tpy} \
      ~{config} \
      ~{output_prefix}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    summarize_sample_gff_junctions_do_tpy: ""
    config: ""
    output_prefix: ""
  }
  output {
    File out_stdout = stdout()
  }
}
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
    docker: "quay.io/biocontainers/cdna_cupcake:22.0.0--py37h97743b1_0"
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
version 1.0

task BamScoreFilterpy {
  input {
    String? inputoutput_format_sam
    String? filtering_strategy_topperquery
    Float? minimum_query_coverage
    String input_file
    String output_file
  }
  command <<<
    bam_score_filter_py \
      ~{input_file} \
      ~{output_file} \
      ~{if defined(inputoutput_format_sam) then ("-f " +  '"' + inputoutput_format_sam + '"') else ""} \
      ~{if defined(filtering_strategy_topperquery) then ("-s " +  '"' + filtering_strategy_topperquery + '"') else ""} \
      ~{if defined(minimum_query_coverage) then ("-q " +  '"' + minimum_query_coverage + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0"
  }
  parameter_meta {
    inputoutput_format_sam: "Input/output format (SAM)."
    filtering_strategy_topperquery: "Filtering strategy: top_per_query, query_coverage,\\nref_coverage (top_per_query)."
    minimum_query_coverage: "Minimum query coverage fraction (0.8)."
    input_file: "Input file."
    output_file: "Output SAM file."
  }
  output {
    File out_stdout = stdout()
  }
}
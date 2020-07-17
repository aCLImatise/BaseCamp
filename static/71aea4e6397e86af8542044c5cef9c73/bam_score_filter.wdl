version 1.0

task BamScoreFilter.py {
  input {
    String? inputoutput_format_sam
    String? filtering_strategy_topperquery
    String? minimum_query_coverage
    String input_file
    String output_file
  }
  command <<<
    bam_score_filter.py \
      ~{input_file} \
      ~{output_file} \
      ~{if defined(inputoutput_format_sam) then ("-f " +  '"' + inputoutput_format_sam + '"') else ""} \
      ~{if defined(filtering_strategy_topperquery) then ("-s " +  '"' + filtering_strategy_topperquery + '"') else ""} \
      ~{if defined(minimum_query_coverage) then ("-q " +  '"' + minimum_query_coverage + '"') else ""}
  >>>
  parameter_meta {
    inputoutput_format_sam: "Input/output format (SAM)."
    filtering_strategy_topperquery: "Filtering strategy: top_per_query, query_coverage, ref_coverage (top_per_query)."
    minimum_query_coverage: "Minimum query coverage fraction (0.8)."
    input_file: "Input file."
    output_file: "Output SAM file."
  }
}
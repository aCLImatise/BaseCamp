version 1.0

task PhyluceAlignGetAlignSummaryData {
  input {
    Directory? alignments
    String? input_format
    Boolean? show_tax_on_counts
    String? verbosity
    File? log_path
    Int? cores
    File? output_stats
  }
  command <<<
    phyluce_align_get_align_summary_data \
      ~{if defined(alignments) then ("--alignments " +  '"' + alignments + '"') else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if (show_tax_on_counts) then "--show-taxon-counts" else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(output_stats) then ("--output-stats " +  '"' + output_stats + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    alignments: "The directory containing alignments to be summarized.\\n(default: None)"
    input_format: "The input alignment format. (default: nexus)"
    show_tax_on_counts: "Show the count of loci with X taxa. (default: False)"
    verbosity: "The logging level to use. (default: INFO)"
    log_path: "The path to a directory to hold logs. (default: None)"
    cores: "Process alignments in parallel using --cores for\\nalignment. This is the number of PHYSICAL CPUs.\\n(default: 1)"
    output_stats: "Output a CSV-formatted file of stats, by locus\\n(default: None)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_stats = "${in_output_stats}"
  }
}
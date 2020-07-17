version 1.0

task PhyluceAlignGetAlignSummaryData {
  input {
    String? alignments
    String? input_format
    Boolean? show_tax_on_counts
    String? verbosity
    String? log_path
    String? cores
    String? output_stats
  }
  command <<<
    phyluce_align_get_align_summary_data \
      ~{if defined(alignments) then ("--alignments " +  '"' + alignments + '"') else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{true="--show-taxon-counts" false="" show_tax_on_counts} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(output_stats) then ("--output-stats " +  '"' + output_stats + '"') else ""}
  >>>
  parameter_meta {
    alignments: "The directory containing alignments to be summarized. (default: None)"
    input_format: "The input alignment format. (default: nexus)"
    show_tax_on_counts: "Show the count of loci with X taxa. (default: False)"
    verbosity: "The logging level to use. (default: INFO)"
    log_path: "The path to a directory to hold logs. (default: None)"
    cores: "Process alignments in parallel using --cores for alignment. This is the number of PHYSICAL CPUs. (default: 1)"
    output_stats: "Output a CSV-formatted file of stats, by locus (default: None)"
  }
}
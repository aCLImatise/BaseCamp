version 1.0

task PhyluceAlignGetOnlyLociWithMinTaxa {
  input {
    String? alignments
    String? tax_a
    String? output_dir_store
    String? percent
    String? input_format
    String? verbosity
    String? log_path
    String? cores
  }
  command <<<
    phyluce_align_get_only_loci_with_min_taxa \
      ~{if defined(alignments) then ("--alignments " +  '"' + alignments + '"') else ""} \
      ~{if defined(tax_a) then ("--taxa " +  '"' + tax_a + '"') else ""} \
      ~{if defined(output_dir_store) then ("--output " +  '"' + output_dir_store + '"') else ""} \
      ~{if defined(percent) then ("--percent " +  '"' + percent + '"') else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""}
  >>>
  parameter_meta {
    alignments: "The directory containing alignments to screen. (default: None)"
    tax_a: "The total number of taxa in all alignments. (default: None)"
    output_dir_store: "The output dir in which to store copies of the alignments (default: None)"
    percent: "The percent of taxa to require (default: 0.75)"
    input_format: "The input alignment format. (default: nexus)"
    verbosity: "The logging level to use. (default: INFO)"
    log_path: "The path to a directory to hold logs. (default: None)"
    cores: "Process alignments in parallel using --cores for alignment. This is the number of PHYSICAL CPUs. (default: 1)"
  }
}
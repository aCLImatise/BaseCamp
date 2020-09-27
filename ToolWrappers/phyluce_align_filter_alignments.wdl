version 1.0

task PhyluceAlignFilterAlignments {
  input {
    Directory? alignments
    Directory? directory_write_alignments
    String? input_format
    Array[String] containing_data_for
    Int? min_length
    Int? min_tax_a
    String? verbosity
    File? log_path
    String var_8
  }
  command <<<
    phyluce_align_filter_alignments \
      ~{var_8} \
      ~{if defined(alignments) then ("--alignments " +  '"' + alignments + '"') else ""} \
      ~{if defined(directory_write_alignments) then ("--output " +  '"' + directory_write_alignments + '"') else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(containing_data_for) then ("--containing-data-for " +  '"' + containing_data_for + '"') else ""} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{if defined(min_tax_a) then ("--min-taxa " +  '"' + min_tax_a + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""}
  >>>
  parameter_meta {
    alignments: "The directory containing the alignment files"
    directory_write_alignments: "The directory to write alignments meeting criteria."
    input_format: "The input alignment format"
    containing_data_for: "Output only alignments --containing-data-for a taxon"
    min_length: "Filter out alignments shorter than --min-length"
    min_tax_a: "Filter out alignments with fewer than --min-taxa"
    verbosity: "The logging level to use."
    log_path: "The path to a directory to hold logs."
    var_8: "[--input-format {fasta,nexus,phylip,clustal,emboss,stockholm}]"
  }
  output {
    File out_stdout = stdout()
  }
}
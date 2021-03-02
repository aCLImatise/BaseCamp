version 1.0

task PhyluceAlignExtractTaxonFastaFromAlignments {
  input {
    Directory? alignments
    String? tax_on
    File? output_fasta_file
    String? input_format
    String? verbosity
    File? log_path
  }
  command <<<
    phyluce_align_extract_taxon_fasta_from_alignments \
      ~{if defined(alignments) then ("--alignments " +  '"' + alignments + '"') else ""} \
      ~{if defined(tax_on) then ("--taxon " +  '"' + tax_on + '"') else ""} \
      ~{if defined(output_fasta_file) then ("--output " +  '"' + output_fasta_file + '"') else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    alignments: "The directory of alignments"
    tax_on: "The taxon to extract"
    output_fasta_file: "The output FASTA file"
    input_format: "The input format of the alignments"
    verbosity: "The logging level to use."
    log_path: "The path to a directory to hold logs."
  }
  output {
    File out_stdout = stdout()
    File out_output_fasta_file = "${in_output_fasta_file}"
  }
}
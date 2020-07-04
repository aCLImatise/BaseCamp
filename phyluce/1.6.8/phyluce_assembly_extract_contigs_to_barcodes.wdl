version 1.0

task PhyluceAssemblyExtractContigsToBarcodes {
  input {
    String? contigs
    String? config
    String? output_fasta_file
    String? verbosity
    String? log_path
  }
  command <<<
    phyluce_assembly_extract_contigs_to_barcodes \
      ~{if defined(contigs) then ("--contigs " +  '"' + contigs + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(output_fasta_file) then ("--output " +  '"' + output_fasta_file + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""}
  >>>
  parameter_meta {
    contigs: "The directory containing the assembled contigs."
    config: "A config file containing the contigs to extract."
    output_fasta_file: "The output FASTA file to create"
    verbosity: "The logging level to use."
    log_path: "The path to a directory to hold logs."
  }
}
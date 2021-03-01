version 1.0

task PhyluceAssemblyExtractContigsToBarcodes {
  input {
    Directory? contigs
    File? config
    File? output_fasta_file
    String? verbosity
    File? log_path
    String var_5
  }
  command <<<
    phyluce_assembly_extract_contigs_to_barcodes \
      ~{var_5} \
      ~{if defined(contigs) then ("--contigs " +  '"' + contigs + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(output_fasta_file) then ("--output " +  '"' + output_fasta_file + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    contigs: "The directory containing the assembled contigs."
    config: "A config file containing the contigs to extract."
    output_fasta_file: "The output FASTA file to create"
    verbosity: "The logging level to use."
    log_path: "The path to a directory to hold logs."
    var_5: "[--verbosity {INFO,WARN,CRITICAL}]"
  }
  output {
    File out_stdout = stdout()
    File out_output_fasta_file = "${in_output_fasta_file}"
  }
}
version 1.0

task ExtractGeneSeq {
  input {
    File? log_level
    File? log
    Boolean? verbose
    File? human_genome_fasta
    File? bed
    File? output_single_fasta
    String extracts_gene_sequences
  }
  command <<<
    extract_gene_seq \
      ~{extracts_gene_sequences} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(human_genome_fasta) then ("--input " +  '"' + human_genome_fasta + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(output_single_fasta) then ("--output " +  '"' + output_single_fasta + '"') else ""}
  >>>
  parameter_meta {
    log_level: "Write a log file (--log-level=DEBUG for debug mode,\\n--log-level=INFO for info mode)"
    log: "Path to log file. (accepts stdout)"
    verbose: "Flag for more verbose log output"
    human_genome_fasta: "Human genome FASTA file"
    bed: "BED file annotation of genes"
    output_single_fasta: "Output a single FASTA file with gene sequences\\n"
    extracts_gene_sequences: "Extracts gene sequences from a genomic FASTA file"
  }
  output {
    File out_stdout = stdout()
    File out_output_single_fasta = "${in_output_single_fasta}"
  }
}
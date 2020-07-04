version 1.0

task ExtractGeneSeq {
  input {
    String? log_level
    String? log
    Boolean? verbose
    String? human_genome_fasta
    String? bed
    String? output_single_file
  }
  command <<<
    extract_gene_seq \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(human_genome_fasta) then ("--input " +  '"' + human_genome_fasta + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(output_single_file) then ("--output " +  '"' + output_single_file + '"') else ""}
  >>>
  parameter_meta {
    log_level: "Write a log file (--log-level=DEBUG for debug mode, --log-level=INFO for info mode)"
    log: "Path to log file. (accepts stdout)"
    verbose: "Flag for more verbose log output"
    human_genome_fasta: "Human genome FASTA file"
    bed: "BED file annotation of genes"
    output_single_file: "Output a single FASTA file with gene sequences"
  }
}
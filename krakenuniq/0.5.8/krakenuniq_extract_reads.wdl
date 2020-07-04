version 1.0

task KrakenuniqExtractReads {
  input {
    Boolean? input_fasta_file
    Boolean? output_fasta_format
    Boolean? invert_print_reads
    String? include_children_using
    Boolean? verbose
    Boolean? pairedend_reads_use
    String tax_on
    String kraken
    String fast_a_slash_fast_q
  }
  command <<<
    krakenuniq-extract-reads \
      ~{tax_on} \
      ~{kraken} \
      ~{fast_a_slash_fast_q} \
      ~{true="-a" false="" input_fasta_file} \
      ~{true="-f" false="" output_fasta_format} \
      ~{true="-i" false="" invert_print_reads} \
      ~{if defined(include_children_using) then ("-t " +  '"' + include_children_using + '"') else ""} \
      ~{true="-v" false="" verbose} \
      ~{true="-p" false="" pairedend_reads_use}
  >>>
  parameter_meta {
    input_fasta_file: "input is FASTA file (default: FASTQ)"
    output_fasta_format: "output in FASTA format"
    invert_print_reads: "invert: print all reads not matching taxon"
    include_children_using: "Include children of taxonomy IDs, using TAXDB to find them"
    verbose: "verbose"
    pairedend_reads_use: "paired-end reads: use a '%' in fasta/q file name as placeholder for 1 and 2"
    tax_on: ""
    kraken: ""
    fast_a_slash_fast_q: ""
  }
}
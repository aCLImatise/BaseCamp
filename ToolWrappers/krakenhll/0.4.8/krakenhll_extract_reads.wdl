version 1.0

task Krakenhllextractreads {
  input {
    Boolean? input_fasta_file
    Boolean? output_fasta_format
    Boolean? invert_print_reads
    String? include_children_taxonomy
    Boolean? verbose
    Boolean? reads_use_fastaq
    Boolean? more_options
    Boolean? options
    String tax_on
    String kraken
    String fast_a_slash_fast_q
  }
  command <<<
    krakenhll_extract_reads \
      ~{tax_on} \
      ~{kraken} \
      ~{fast_a_slash_fast_q} \
      ~{if (input_fasta_file) then "-a" else ""} \
      ~{if (output_fasta_format) then "-f" else ""} \
      ~{if (invert_print_reads) then "-i" else ""} \
      ~{if defined(include_children_taxonomy) then ("-t " +  '"' + include_children_taxonomy + '"') else ""} \
      ~{if (verbose) then "-v" else ""} \
      ~{if (reads_use_fastaq) then "-p" else ""} \
      ~{if (more_options) then "-MORE_OPTIONS" else ""} \
      ~{if (options) then "-OPTIONS" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_fasta_file: "input is FASTA file (default: FASTQ)"
    output_fasta_format: "output in FASTA format"
    invert_print_reads: "invert: print all reads not matching taxon"
    include_children_taxonomy: "Include children of taxonomy IDs, using TAXDB to find them"
    verbose: "verbose"
    reads_use_fastaq: "paired-end reads: use a '%' in fasta/q file name as placeholder for 1 and 2"
    more_options: ""
    options: ""
    tax_on: ""
    kraken: ""
    fast_a_slash_fast_q: ""
  }
  output {
    File out_stdout = stdout()
  }
}
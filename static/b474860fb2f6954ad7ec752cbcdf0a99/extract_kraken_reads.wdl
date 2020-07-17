version 1.0

task ExtractKrakenReads.py {
  input {
    String? kraken_output_file
    String? s_one
    String? s_two
    Array[String] taxid
    String? output_fastaq_file_containing
    String? output_two
    Boolean? append
    Boolean? no_append
    Int? max
    String? report
    Boolean? include_parents
    Boolean? include_children
    Boolean? exclude
    Boolean? fast_q_output
  }
  command <<<
    extract_kraken_reads.py \
      ~{if defined(kraken_output_file) then ("-k " +  '"' + kraken_output_file + '"') else ""} \
      ~{if defined(s_one) then ("-s1 " +  '"' + s_one + '"') else ""} \
      ~{if defined(s_two) then ("-s2 " +  '"' + s_two + '"') else ""} \
      ~{if defined(taxid) then ("--taxid " +  '"' + taxid + '"') else ""} \
      ~{if defined(output_fastaq_file_containing) then ("--output " +  '"' + output_fastaq_file_containing + '"') else ""} \
      ~{if defined(output_two) then ("--output2 " +  '"' + output_two + '"') else ""} \
      ~{true="--append" false="" append} \
      ~{true="--noappend" false="" no_append} \
      ~{if defined(max) then ("--max " +  '"' + max + '"') else ""} \
      ~{if defined(report) then ("--report " +  '"' + report + '"') else ""} \
      ~{true="--include-parents" false="" include_parents} \
      ~{true="--include-children" false="" include_children} \
      ~{true="--exclude" false="" exclude} \
      ~{true="--fastq-output" false="" fast_q_output}
  >>>
  parameter_meta {
    kraken_output_file: "Kraken output file to parse"
    s_one: "FASTA/FASTQ File containing the raw sequence letters."
    s_two: "2nd FASTA/FASTQ File containing the raw sequence letters (paired)."
    taxid: "Taxonomy ID[s] of reads to extract (space-delimited)"
    output_fastaq_file_containing: "Output FASTA/Q file containing the reads and sample IDs"
    output_two: "Output FASTA/Q file containig the second pair of reads [required for paired input]"
    append: "Append the sequences to the end of the output FASTA file specified."
    no_append: "Create a new FASTA file containing sample sequences and IDs (rewrite if existing) [default]."
    max: "Maximum number of reads to save [default: 100,000,000]"
    report: "Kraken report file. [required only if --include- parents/children is specified]"
    include_parents: "Include reads classified at parent levels of the specified taxids"
    include_children: "Include reads classified more specifically than the specified taxids"
    exclude: "Instead of finding reads matching specified taxids, finds all reads NOT matching specified taxids"
    fast_q_output: "Print output FASTQ reads [requires input FASTQ, default: output is FASTA]"
  }
}
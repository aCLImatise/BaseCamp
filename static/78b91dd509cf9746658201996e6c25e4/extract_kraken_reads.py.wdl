version 1.0

task ExtractKrakenReadspy {
  input {
    File? kraken_output_file
    Int? s_one
    Int? s_two
    Array[String] taxid
    File? output_fastaq_file_containing
    File? output_two
    File? append
    Boolean? no_append
    Int? max
    File? report
    Boolean? include_parents
    Boolean? include_children
    Boolean? exclude
    Boolean? fast_q_output
  }
  command <<<
    extract_kraken_reads_py \
      ~{if defined(kraken_output_file) then ("-k " +  '"' + kraken_output_file + '"') else ""} \
      ~{if defined(s_one) then ("-s1 " +  '"' + s_one + '"') else ""} \
      ~{if defined(s_two) then ("-s2 " +  '"' + s_two + '"') else ""} \
      ~{if defined(taxid) then ("--taxid " +  '"' + taxid + '"') else ""} \
      ~{if defined(output_fastaq_file_containing) then ("--output " +  '"' + output_fastaq_file_containing + '"') else ""} \
      ~{if defined(output_two) then ("--output2 " +  '"' + output_two + '"') else ""} \
      ~{if (append) then "--append" else ""} \
      ~{if (no_append) then "--noappend" else ""} \
      ~{if defined(max) then ("--max " +  '"' + max + '"') else ""} \
      ~{if defined(report) then ("--report " +  '"' + report + '"') else ""} \
      ~{if (include_parents) then "--include-parents" else ""} \
      ~{if (include_children) then "--include-children" else ""} \
      ~{if (exclude) then "--exclude" else ""} \
      ~{if (fast_q_output) then "--fastq-output" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/krakentools:1.0.1--pyh3252c3a_0"
  }
  parameter_meta {
    kraken_output_file: "Kraken output file to parse"
    s_one: "FASTA/FASTQ File containing the raw sequence letters."
    s_two: "2nd FASTA/FASTQ File containing the raw sequence\\nletters (paired)."
    taxid: "Taxonomy ID[s] of reads to extract (space-delimited)"
    output_fastaq_file_containing: "Output FASTA/Q file containing the reads and sample\\nIDs"
    output_two: "Output FASTA/Q file containig the second pair of reads\\n[required for paired input]"
    append: "Append the sequences to the end of the output FASTA\\nfile specified."
    no_append: "Create a new FASTA file containing sample sequences\\nand IDs (rewrite if existing) [default]."
    max: "Maximum number of reads to save [default: 100,000,000]"
    report: "Kraken report file. [required only if --include-\\nparents/children is specified]"
    include_parents: "Include reads classified at parent levels of the\\nspecified taxids"
    include_children: "Include reads classified more specifically than the\\nspecified taxids"
    exclude: "Instead of finding reads matching specified taxids,\\nfinds all reads NOT matching specified taxids"
    fast_q_output: "Print output FASTQ reads [requires input FASTQ,\\ndefault: output is FASTA]\\n"
  }
  output {
    File out_stdout = stdout()
    File out_kraken_output_file = "${in_kraken_output_file}"
    File out_output_fastaq_file_containing = "${in_output_fastaq_file_containing}"
    File out_output_two = "${in_output_two}"
    File out_append = "${in_append}"
  }
}
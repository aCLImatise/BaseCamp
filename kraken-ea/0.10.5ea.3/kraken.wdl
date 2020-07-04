version 1.0

task Kraken {
  input {
    String? db
    String? threads
    Boolean? fast_a_input
    Boolean? fast_q_input
    Boolean? gzip_compressed
    Boolean? bzip_two_compressed
    Boolean? quick
    String? min_hits
    File? unclassified_out
    File? classified_out
    File? print_output_filename
    Boolean? only_classified_output
    Boolean? preload
    Boolean? paired
    Boolean? check_names
  }
  command <<<
    kraken \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--fasta-input" false="" fast_a_input} \
      ~{true="--fastq-input" false="" fast_q_input} \
      ~{true="--gzip-compressed" false="" gzip_compressed} \
      ~{true="--bzip2-compressed" false="" bzip_two_compressed} \
      ~{true="--quick" false="" quick} \
      ~{if defined(min_hits) then ("--min-hits " +  '"' + min_hits + '"') else ""} \
      ~{if defined(unclassified_out) then ("--unclassified-out " +  '"' + unclassified_out + '"') else ""} \
      ~{if defined(classified_out) then ("--classified-out " +  '"' + classified_out + '"') else ""} \
      ~{if defined(print_output_filename) then ("--output " +  '"' + print_output_filename + '"') else ""} \
      ~{true="--only-classified-output" false="" only_classified_output} \
      ~{true="--preload" false="" preload} \
      ~{true="--paired" false="" paired} \
      ~{true="--check-names" false="" check_names}
  >>>
  parameter_meta {
    db: "Name for Kraken DB (default: none)"
    threads: "Number of threads (default: 1)"
    fast_a_input: "Input is FASTA format"
    fast_q_input: "Input is FASTQ format"
    gzip_compressed: "Input is gzip compressed"
    bzip_two_compressed: "Input is bzip2 compressed"
    quick: "Quick operation (use first hit or hits)"
    min_hits: "In quick op., number of hits req'd for classification NOTE: this is ignored if --quick is not specified"
    unclassified_out: "Print unclassified sequences to filename"
    classified_out: "Print classified sequences to filename"
    print_output_filename: "Print output to filename (default: stdout); \"-\" will suppress normal output"
    only_classified_output: "Print no Kraken output for unclassified sequences"
    preload: "Loads DB into memory before classification"
    paired: "The two filenames provided are paired-end reads"
    check_names: "Ensure each pair of reads have names that agree with each other; ignored if --paired is not specified"
  }
}
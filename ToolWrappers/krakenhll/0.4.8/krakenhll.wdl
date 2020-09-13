version 1.0

task Krakenhll {
  input {
    String? db
    Int? threads
    Boolean? fast_a_input
    Boolean? fast_q_input
    Boolean? gzip_compressed
    Boolean? bzip_two_compressed
    Int? precision
    Boolean? quick
    Int? min_hits
    File? unclassified_out
    File? classified_out
    File? print_output_filename
    Boolean? only_classified_output
    Boolean? preload
    Boolean? paired
    Boolean? check_names
    Boolean? uid_mapping
    File? report_file
  }
  command <<<
    krakenhll \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (fast_a_input) then "--fasta-input" else ""} \
      ~{if (fast_q_input) then "--fastq-input" else ""} \
      ~{if (gzip_compressed) then "--gzip-compressed" else ""} \
      ~{if (bzip_two_compressed) then "--bzip2-compressed" else ""} \
      ~{if defined(precision) then ("--precision " +  '"' + precision + '"') else ""} \
      ~{if (quick) then "--quick" else ""} \
      ~{if defined(min_hits) then ("--min-hits " +  '"' + min_hits + '"') else ""} \
      ~{if defined(unclassified_out) then ("--unclassified-out " +  '"' + unclassified_out + '"') else ""} \
      ~{if defined(classified_out) then ("--classified-out " +  '"' + classified_out + '"') else ""} \
      ~{if defined(print_output_filename) then ("--output " +  '"' + print_output_filename + '"') else ""} \
      ~{if (only_classified_output) then "--only-classified-output" else ""} \
      ~{if (preload) then "--preload" else ""} \
      ~{if (paired) then "--paired" else ""} \
      ~{if (check_names) then "--check-names" else ""} \
      ~{if (uid_mapping) then "--uid-mapping" else ""} \
      ~{if defined(report_file) then ("--report-file " +  '"' + report_file + '"') else ""}
  >>>
  parameter_meta {
    db: "Name for Kraken DB (default: none)"
    threads: "Number of threads (default: 1)"
    fast_a_input: "Input is FASTA format"
    fast_q_input: "Input is FASTQ format"
    gzip_compressed: "Input is gzip compressed"
    bzip_two_compressed: "Input is bzip2 compressed"
    precision: "Precision for unique k-mer counting, between 10 and 18 (default: 12)"
    quick: "Quick operation (use first hit or hits)"
    min_hits: "In quick op., number of hits req'd for classification\\nNOTE: this is ignored if --quick is not specified"
    unclassified_out: "Print unclassified sequences to filename"
    classified_out: "Print classified sequences to filename"
    print_output_filename: "Print output to filename (default: stdout); \\\"off\\\" will\\nsuppress normal output"
    only_classified_output: "Print no Kraken output for unclassified sequences"
    preload: "Loads DB into memory before classification"
    paired: "The two filenames provided are paired-end reads"
    check_names: "Ensure each pair of reads have names that agree\\nwith each other; ignored if --paired is not specified"
    uid_mapping: "Map using UID database"
    report_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_print_output_filename = "${in_print_output_filename}"
  }
}
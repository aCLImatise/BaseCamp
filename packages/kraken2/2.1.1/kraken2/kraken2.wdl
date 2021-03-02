version 1.0

task Kraken2 {
  input {
    Int? db
    Int? threads
    Boolean? quick
    File? unclassified_out
    File? classified_out
    File? print_output_filename
    Float? confidence
    Int? minimum_base_quality
    File? report
    Boolean? use_mpa_style
    String? report_minimizer_data
    Boolean? memory_mapping
    Boolean? paired
    Boolean? use_names
    Boolean? gzip_compressed
    Boolean? bzip_two_compressed
    Int? minimum_hit_groups
    String kraken_mpa_report
  }
  command <<<
    kraken2 \
      ~{kraken_mpa_report} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (quick) then "--quick" else ""} \
      ~{if defined(unclassified_out) then ("--unclassified-out " +  '"' + unclassified_out + '"') else ""} \
      ~{if defined(classified_out) then ("--classified-out " +  '"' + classified_out + '"') else ""} \
      ~{if defined(print_output_filename) then ("--output " +  '"' + print_output_filename + '"') else ""} \
      ~{if defined(confidence) then ("--confidence " +  '"' + confidence + '"') else ""} \
      ~{if defined(minimum_base_quality) then ("--minimum-base-quality " +  '"' + minimum_base_quality + '"') else ""} \
      ~{if defined(report) then ("--report " +  '"' + report + '"') else ""} \
      ~{if (use_mpa_style) then "--use-mpa-style" else ""} \
      ~{if defined(report_minimizer_data) then ("--report-minimizer-data " +  '"' + report_minimizer_data + '"') else ""} \
      ~{if (memory_mapping) then "--memory-mapping" else ""} \
      ~{if (paired) then "--paired" else ""} \
      ~{if (use_names) then "--use-names" else ""} \
      ~{if (gzip_compressed) then "--gzip-compressed" else ""} \
      ~{if (bzip_two_compressed) then "--bzip2-compressed" else ""} \
      ~{if defined(minimum_hit_groups) then ("--minimum-hit-groups " +  '"' + minimum_hit_groups + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/kraken2:2.1.1--pl526hc9558a2_0"
  }
  parameter_meta {
    db: "Name for Kraken 2 DB\\n(default: none)"
    threads: "Number of threads (default: 1)"
    quick: "Quick operation (use first hit or hits)"
    unclassified_out: "Print unclassified sequences to filename"
    classified_out: "Print classified sequences to filename"
    print_output_filename: "Print output to filename (default: stdout); \\\"-\\\" will\\nsuppress normal output"
    confidence: "Confidence score threshold (default: 0.0); must be\\nin [0, 1]."
    minimum_base_quality: "Minimum base quality used in classification (def: 0,\\nonly effective with FASTQ input)."
    report: "Print a report with aggregrate counts/clade to file"
    use_mpa_style: "With --report, format report output like Kraken 1's"
    report_minimizer_data: ", report minimizer and distinct minimizer\\ncount information in addition to normal Kraken report"
    memory_mapping: "Avoids loading database into RAM"
    paired: "The filenames provided have paired-end reads"
    use_names: "Print scientific names instead of just taxids"
    gzip_compressed: "Input files are compressed with gzip"
    bzip_two_compressed: "Input files are compressed with bzip2"
    minimum_hit_groups: "Minimum number of hit groups (overlapping k-mers\\nsharing the same minimizer) needed to make a call\\n(default: 2)"
    kraken_mpa_report: "--report-zero-counts    With --report, report counts for ALL taxa, even if"
  }
  output {
    File out_stdout = stdout()
    File out_print_output_filename = "${in_print_output_filename}"
  }
}
version 1.0

task DeepacliveRefilter {
  input {
    Int? read_length
    String? seq_cycles
    String? format
    String? barcodes
    String? threshold
    Directory? fast_a_input
    String? preds_input
    Directory? re_filter_output
    Boolean? discard_neg
  }
  command <<<
    deepac_live refilter \
      ~{if defined(read_length) then ("--read-length " +  '"' + read_length + '"') else ""} \
      ~{if defined(seq_cycles) then ("--seq-cycles " +  '"' + seq_cycles + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(barcodes) then ("--barcodes " +  '"' + barcodes + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(fast_a_input) then ("--fasta-input " +  '"' + fast_a_input + '"') else ""} \
      ~{if defined(preds_input) then ("--preds-input " +  '"' + preds_input + '"') else ""} \
      ~{if defined(re_filter_output) then ("--refilter-output " +  '"' + re_filter_output + '"') else ""} \
      ~{if (discard_neg) then "--discard-neg" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/deepaclive:0.3.2--py_0"
  }
  parameter_meta {
    read_length: "Expected read length"
    seq_cycles: "Comma-separated list of sequencing cycles to analyze."
    format: "Format of temp files. bam or fasta."
    barcodes: "Comma-separated list of barcodes of samples to\\nanalyze. Default: \\\"undetermined\\\""
    threshold: "Classification threshold."
    fast_a_input: "Receiver input directory."
    preds_input: "Comma-separated list of receiver output directories."
    re_filter_output: "Refilter output directory."
    discard_neg: "Don't save predictions for nonpathogenic reads."
  }
  output {
    File out_stdout = stdout()
    Directory out_re_filter_output = "${in_re_filter_output}"
  }
}
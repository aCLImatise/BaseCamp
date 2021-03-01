version 1.0

task IgdiscoverGroup {
  input {
    Boolean? real_cdr_three
    Boolean? pseudo_cdr_three
    File? groups_output
    File? plot_sizes
    String? limit
    Boolean? trim_g
    Int? minimum_length
    Int? barcode_length
    File? json
    String sequences
  }
  command <<<
    igdiscover group \
      ~{sequences} \
      ~{if (real_cdr_three) then "--real-cdr3" else ""} \
      ~{if (pseudo_cdr_three) then "--pseudo-cdr3" else ""} \
      ~{if defined(groups_output) then ("--groups-output " +  '"' + groups_output + '"') else ""} \
      ~{if defined(plot_sizes) then ("--plot-sizes " +  '"' + plot_sizes + '"') else ""} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""} \
      ~{if (trim_g) then "--trim-g" else ""} \
      ~{if defined(minimum_length) then ("--minimum-length " +  '"' + minimum_length + '"') else ""} \
      ~{if defined(barcode_length) then ("--barcode-length " +  '"' + barcode_length + '"') else ""} \
      ~{if defined(json) then ("--json " +  '"' + json + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    real_cdr_three: "In addition to barcode, group sequences by real CDR3\\n(detected with regex)."
    pseudo_cdr_three: "[START:END]\\nIn addition to barcode, group sequences by pseudo\\nCDR3. If START:END is omitted, use -80:-60."
    groups_output: "Write tab-separated table with groups to FILE"
    plot_sizes: "Plot group sizes to FILE (.png or .pdf)"
    limit: "Limit processing to the first N reads"
    trim_g: "Trim 'G' nucleotides at 5' end"
    minimum_length: "Minimum sequence length"
    barcode_length: "Length of barcode. Positive for 5' barcode, negative\\nfor 3' barcode. Default: 12"
    json: "Write statistics to FILE"
    sequences: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}
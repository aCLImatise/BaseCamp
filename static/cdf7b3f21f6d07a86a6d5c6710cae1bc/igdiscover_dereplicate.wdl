version 1.0

task IgdiscoverDereplicate {
  input {
    String? limit
    Boolean? trim_g
    Int? minimum_length
    Int? barcode_length
    File? json
    String sequences
  }
  command <<<
    igdiscover dereplicate \
      ~{sequences} \
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
    limit: "Limit processing to the first N reads"
    trim_g: "Trim 'G' nucleotides at 5' end"
    minimum_length: "Minimum sequence length"
    barcode_length: "Length of barcode. Positive for 5' barcode, negative\\nfor 3' barcode. Default: 0"
    json: "Write statistics to FILE"
    sequences: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}
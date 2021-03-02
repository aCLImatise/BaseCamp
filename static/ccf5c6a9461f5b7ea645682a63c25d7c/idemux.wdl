version 1.0

task Idemux {
  input {
    Boolean? i_five_rc
    Int? i_one_start
    Int? r_one
    Int? r_two
    File? sample_sheet
    String? out
  }
  command <<<
    idemux \
      ~{if (i_five_rc) then "--i5-rc" else ""} \
      ~{if defined(i_one_start) then ("--i1-start " +  '"' + i_one_start + '"') else ""} \
      ~{if defined(r_one) then ("--r1 " +  '"' + r_one + '"') else ""} \
      ~{if defined(r_two) then ("--r2 " +  '"' + r_two + '"') else ""} \
      ~{if defined(sample_sheet) then ("--sample-sheet " +  '"' + sample_sheet + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/idemux:0.1.5--py_0"
  }
  parameter_meta {
    i_five_rc: "when the i5 barcode has been sequenced as reverse\\ncomplement. make sure to enter non-reverse complement\\nsequences in the barcode file"
    i_one_start: "start position of the i1 index (1-based) on read 2\\n(default: 11)"
    r_one: "gzipped read 1 fastq file"
    r_two: "path to gzipped read 2 fastq file"
    sample_sheet: "csv file describing sample names, and barcode\\ncombinations"
    out: "where to write the output files"
  }
  output {
    File out_stdout = stdout()
  }
}
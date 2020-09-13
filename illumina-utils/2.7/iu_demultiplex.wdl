version 1.0

task Iudemultiplex {
  input {
    File? sample_barcode_mapping
    Int? r_one
    Int? r_two
    File? index
    Boolean? rev_comp_barcodes
    Directory? output_dir
  }
  command <<<
    iu_demultiplex \
      ~{if defined(sample_barcode_mapping) then ("--sample-barcode-mapping " +  '"' + sample_barcode_mapping + '"') else ""} \
      ~{if defined(r_one) then ("--r1 " +  '"' + r_one + '"') else ""} \
      ~{if defined(r_two) then ("--r2 " +  '"' + r_two + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if (rev_comp_barcodes) then "--rev-comp-barcodes" else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""}
  >>>
  parameter_meta {
    sample_barcode_mapping: "TAB-delimited file of sample-barcode associations"
    r_one: "FASTQ file for R1"
    r_two: "FASTQ file for R2."
    index: "Index file (I1)"
    rev_comp_barcodes: "Reverse-complement barcodes before processing"
    output_dir: "Directory for output storage\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}
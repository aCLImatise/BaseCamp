version 1.0

task DropletutilsMakeTestSdrf.R {
  input {
    String? barcodes
    String? output_file
  }
  command <<<
    dropletutils-make-test-sdrf.R \
      ~{if defined(barcodes) then ("--barcodes " +  '"' + barcodes + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""}
  >>>
  parameter_meta {
    barcodes: "path to the cell barcodes file in .tsv format"
    output_file: "path to the tab-deilmited output file"
  }
}
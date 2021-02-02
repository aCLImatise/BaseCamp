version 1.0

task DropletutilsmaketestsdrfR {
  input {
    File? barcodes
    File? output_file
  }
  command <<<
    dropletutils_make_test_sdrf_R \
      ~{if defined(barcodes) then ("--barcodes " +  '"' + barcodes + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""}
  >>>
  parameter_meta {
    barcodes: "path to the cell barcodes file in .tsv format"
    output_file: "path to the tab-deilmited output file"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}
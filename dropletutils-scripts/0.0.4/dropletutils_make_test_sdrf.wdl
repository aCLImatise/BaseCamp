version 1.0

task DropletutilsMakeTestSdrf.R {
  input {
    String barcodesBarcodes
    String outputOutputFile
  }
  command <<<
    dropletutils-make-test-sdrf.R \
      ~{if defined(barcodesBarcodes) then ("--barcodes " +  '"' + barcodesBarcodes + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""}
  >>>
}
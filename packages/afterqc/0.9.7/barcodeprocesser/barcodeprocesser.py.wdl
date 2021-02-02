version 1.0

task Barcodeprocesserpy {
  command <<<
    barcodeprocesser_py
  >>>
  output {
    File out_stdout = stdout()
  }
}
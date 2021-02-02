version 1.0

task Runncbiconverter {
  command <<<
    run_ncbi_converter
  >>>
  output {
    File out_stdout = stdout()
  }
}
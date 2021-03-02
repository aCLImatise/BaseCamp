version 1.0

task Runncbiconverter {
  command <<<
    run_ncbi_converter
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
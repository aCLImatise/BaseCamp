version 1.0

task Multivcfanalyzer {
  command <<<
    multivcfanalyzer
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
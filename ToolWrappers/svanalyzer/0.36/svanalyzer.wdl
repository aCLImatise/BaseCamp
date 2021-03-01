version 1.0

task Svanalyzer {
  command <<<
    svanalyzer
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
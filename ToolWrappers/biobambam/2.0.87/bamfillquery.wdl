version 1.0

task Bamfillquery {
  command <<<
    bamfillquery
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task Revision272 {
  command <<<
    revision_272
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task MafProject {
  command <<<
    maf_project
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
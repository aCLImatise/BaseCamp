version 1.0

task ScreamingBackpack {
  command <<<
    screamingBackpack
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
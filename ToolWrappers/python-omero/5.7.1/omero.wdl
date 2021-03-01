version 1.0

task Omero {
  command <<<
    omero
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
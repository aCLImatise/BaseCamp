version 1.0

task Zoom2sampl {
  command <<<
    zoom2sam_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
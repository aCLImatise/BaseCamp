version 1.0

task Gocrtcl {
  command <<<
    gocr_tcl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
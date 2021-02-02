version 1.0

task Gocrtcl {
  command <<<
    gocr_tcl
  >>>
  output {
    File out_stdout = stdout()
  }
}
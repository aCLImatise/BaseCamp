version 1.0

task Xcfview {
  command <<<
    xcfview
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
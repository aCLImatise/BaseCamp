version 1.0

task Xcfview {
  command <<<
    xcfview
  >>>
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task Mglroundtrip {
  command <<<
    mglroundtrip
  >>>
  output {
    File out_stdout = stdout()
  }
}
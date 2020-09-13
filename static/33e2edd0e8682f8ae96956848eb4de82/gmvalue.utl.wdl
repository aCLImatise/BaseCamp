version 1.0

task Gmvalueutl {
  command <<<
    gmvalue_utl
  >>>
  output {
    File out_stdout = stdout()
  }
}
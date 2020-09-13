version 1.0

task Fixfastq {
  command <<<
    fixfastq
  >>>
  output {
    File out_stdout = stdout()
  }
}
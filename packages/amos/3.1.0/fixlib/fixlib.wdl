version 1.0

task Fixlib {
  command <<<
    fixlib
  >>>
  output {
    File out_stdout = stdout()
  }
}
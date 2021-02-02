version 1.0

task Bamflagsplit {
  command <<<
    bamflagsplit
  >>>
  output {
    File out_stdout = stdout()
  }
}
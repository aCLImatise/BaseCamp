version 1.0

task Bammarkduplicatesopt {
  command <<<
    bammarkduplicatesopt
  >>>
  output {
    File out_stdout = stdout()
  }
}
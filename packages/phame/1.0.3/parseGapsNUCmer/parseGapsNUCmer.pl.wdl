version 1.0

task ParseGapsNUCmerpl {
  command <<<
    parseGapsNUCmer_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
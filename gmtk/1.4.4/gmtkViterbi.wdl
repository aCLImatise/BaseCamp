version 1.0

task GmtkViterbi {
  command <<<
    gmtkViterbi
  >>>
  output {
    File out_stdout = stdout()
  }
}
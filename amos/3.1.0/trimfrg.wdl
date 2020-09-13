version 1.0

task Trimfrg {
  command <<<
    trimfrg
  >>>
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task Rebaseextract {
  command <<<
    rebaseextract
  >>>
  output {
    File out_stdout = stdout()
  }
}
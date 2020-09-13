version 1.0

task Rebaseextract {
  command <<<
    _rebaseextract
  >>>
  output {
    File out_stdout = stdout()
  }
}
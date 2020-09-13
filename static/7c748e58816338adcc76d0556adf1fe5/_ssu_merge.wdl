version 1.0

task Ssumerge {
  command <<<
    _ssu_merge
  >>>
  output {
    File out_stdout = stdout()
  }
}
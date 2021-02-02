version 1.0

task Rawtoolssh {
  command <<<
    rawtools_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}
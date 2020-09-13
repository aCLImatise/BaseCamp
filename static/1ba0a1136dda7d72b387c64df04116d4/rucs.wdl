version 1.0

task Rucs {
  command <<<
    rucs
  >>>
  output {
    File out_stdout = stdout()
  }
}
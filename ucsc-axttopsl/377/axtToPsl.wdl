version 1.0

task AxtToPsl {
  command <<<
    axtToPsl
  >>>
  output {
    File out_stdout = stdout()
  }
}
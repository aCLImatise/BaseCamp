version 1.0

task JunctionalReadspy {
  command <<<
    junctionalReads_py
  >>>
  output {
    File out_stdout = stdout()
  }
}
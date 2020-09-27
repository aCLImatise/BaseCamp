version 1.0

task Patchpospy {
  command <<<
    patchpos_py
  >>>
  output {
    File out_stdout = stdout()
  }
}
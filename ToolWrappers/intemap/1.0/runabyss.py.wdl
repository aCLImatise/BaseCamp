version 1.0

task Runabysspy {
  command <<<
    runabyss_py
  >>>
  output {
    File out_stdout = stdout()
  }
}
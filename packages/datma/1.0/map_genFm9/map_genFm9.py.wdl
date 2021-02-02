version 1.0

task MapGenFm9py {
  command <<<
    map_genFm9_py
  >>>
  output {
    File out_stdout = stdout()
  }
}
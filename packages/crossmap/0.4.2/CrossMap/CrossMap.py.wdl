version 1.0

task CrossMappy {
  command <<<
    CrossMap_py
  >>>
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task Svtk {
  command <<<
    svtk
  >>>
  output {
    File out_stdout = stdout()
  }
}
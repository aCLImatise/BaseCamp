version 1.0

task CatDir {
  command <<<
    catDir
  >>>
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task CatUncomment {
  command <<<
    catUncomment
  >>>
  output {
    File out_stdout = stdout()
  }
}
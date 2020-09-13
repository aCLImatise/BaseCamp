version 1.0

task Mash {
  command <<<
    mash
  >>>
  output {
    File out_stdout = stdout()
  }
}
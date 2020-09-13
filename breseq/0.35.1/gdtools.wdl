version 1.0

task Gdtools {
  command <<<
    gdtools
  >>>
  output {
    File out_stdout = stdout()
  }
}
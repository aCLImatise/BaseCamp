version 1.0

task TadaridaD {
  command <<<
    tadaridaD
  >>>
  output {
    File out_stdout = stdout()
  }
}
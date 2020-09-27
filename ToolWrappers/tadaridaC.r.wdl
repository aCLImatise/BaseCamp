version 1.0

task TadaridaCr {
  command <<<
    tadaridaC_r
  >>>
  output {
    File out_stdout = stdout()
  }
}
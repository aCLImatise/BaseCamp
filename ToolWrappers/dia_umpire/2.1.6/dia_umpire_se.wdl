version 1.0

task DiaUmpireSe {
  command <<<
    dia_umpire_se
  >>>
  output {
    File out_stdout = stdout()
  }
}
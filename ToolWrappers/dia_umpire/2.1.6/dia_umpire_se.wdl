version 1.0

task DiaUmpireSe {
  command <<<
    dia_umpire_se
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
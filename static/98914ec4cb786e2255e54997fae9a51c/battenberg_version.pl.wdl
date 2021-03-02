version 1.0

task BattenbergVersionpl {
  command <<<
    battenberg_version_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
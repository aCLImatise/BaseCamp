version 1.0

task MapCogBackpl {
  command <<<
    MapCogBack_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
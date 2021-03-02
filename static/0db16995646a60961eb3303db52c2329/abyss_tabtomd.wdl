version 1.0

task Abysstabtomd {
  command <<<
    abyss_tabtomd
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
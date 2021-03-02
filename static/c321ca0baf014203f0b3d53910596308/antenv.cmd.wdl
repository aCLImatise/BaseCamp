version 1.0

task Antenvcmd {
  command <<<
    antenv_cmd
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
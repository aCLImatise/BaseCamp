version 1.0

task Spectaclesh {
  command <<<
    Spectacle_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
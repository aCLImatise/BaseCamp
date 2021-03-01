version 1.0

task Gdistribution {
  command <<<
    gdistribution
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
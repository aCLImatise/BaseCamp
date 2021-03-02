version 1.0

task Bamfilterrg {
  command <<<
    bamfilterrg
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task Obsskmeans {
  command <<<
    obs_skmeans
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
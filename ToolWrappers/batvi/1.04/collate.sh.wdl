version 1.0

task Collatesh {
  command <<<
    collate_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
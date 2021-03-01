version 1.0

task Hbvblastsh {
  command <<<
    hbvblast_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
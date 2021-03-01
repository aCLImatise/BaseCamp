version 1.0

task Seqxrefget {
  command <<<
    seqxrefget
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
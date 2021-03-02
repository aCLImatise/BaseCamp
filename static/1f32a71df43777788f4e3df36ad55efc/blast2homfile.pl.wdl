version 1.0

task Blast2homfilepl {
  command <<<
    blast2homfile_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
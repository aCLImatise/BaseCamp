version 1.0

task Blast2sampl {
  command <<<
    blast2sam_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task Psl2sampl {
  command <<<
    psl2sam_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
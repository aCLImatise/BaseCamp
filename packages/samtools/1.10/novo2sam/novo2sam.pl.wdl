version 1.0

task Novo2sampl {
  command <<<
    novo2sam_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
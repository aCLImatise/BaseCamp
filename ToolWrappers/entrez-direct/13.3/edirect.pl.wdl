version 1.0

task Edirectpl {
  command <<<
    edirect_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
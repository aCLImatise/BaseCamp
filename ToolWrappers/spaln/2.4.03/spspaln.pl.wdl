version 1.0

task Spspalnpl {
  command <<<
    spspaln_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
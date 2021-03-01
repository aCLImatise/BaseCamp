version 1.0

task Fqlenpl {
  command <<<
    fqlen_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
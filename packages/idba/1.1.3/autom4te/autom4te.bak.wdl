version 1.0

task Autom4tebak {
  command <<<
    autom4te_bak
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
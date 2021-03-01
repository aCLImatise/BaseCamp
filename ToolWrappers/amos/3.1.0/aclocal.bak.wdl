version 1.0

task Aclocalbak {
  command <<<
    aclocal_bak
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
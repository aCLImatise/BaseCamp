version 1.0

task Autoreconfbak {
  command <<<
    autoreconf_bak
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
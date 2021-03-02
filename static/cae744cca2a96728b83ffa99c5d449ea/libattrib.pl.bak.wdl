version 1.0

task Libattribplbak {
  command <<<
    libattrib_pl_bak
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
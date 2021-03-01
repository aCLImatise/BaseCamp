version 1.0

task Tab2ovls {
  command <<<
    tab2ovls
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
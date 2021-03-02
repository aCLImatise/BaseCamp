version 1.0

task Mpaserver {
  command <<<
    mpa_server
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
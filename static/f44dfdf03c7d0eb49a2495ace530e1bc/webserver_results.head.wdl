version 1.0

task Webserverresultshead {
  command <<<
    webserver_results_head
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
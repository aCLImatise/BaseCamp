version 1.0

task Webserverresultshead {
  command <<<
    webserver_results_head
  >>>
  output {
    File out_stdout = stdout()
  }
}
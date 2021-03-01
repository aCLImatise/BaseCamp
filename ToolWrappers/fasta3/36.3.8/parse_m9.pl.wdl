version 1.0

task ParseM9pl {
  command <<<
    parse_m9_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
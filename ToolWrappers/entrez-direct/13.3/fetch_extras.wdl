version 1.0

task Fetchextras {
  command <<<
    fetch_extras
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
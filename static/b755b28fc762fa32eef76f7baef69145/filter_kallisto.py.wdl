version 1.0

task FilterKallistopy {
  command <<<
    filter_kallisto_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task Runrfhpy {
  command <<<
    runrfh_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
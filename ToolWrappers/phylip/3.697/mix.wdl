version 1.0

task Mix {
  command <<<
    mix
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
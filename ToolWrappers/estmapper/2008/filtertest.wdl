version 1.0

task Filtertest {
  command <<<
    filtertest
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
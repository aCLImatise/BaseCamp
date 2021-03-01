version 1.0

task Cpuspl {
  command <<<
    cpus_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
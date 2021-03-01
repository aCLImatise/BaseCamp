version 1.0

task Cpusin {
  command <<<
    cpus_in
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
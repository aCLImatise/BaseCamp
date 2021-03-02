version 1.0

task SimReadso {
  command <<<
    sim_reads_o
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
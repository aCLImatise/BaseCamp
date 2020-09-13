version 1.0

task SimReadso {
  command <<<
    sim_reads_o
  >>>
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task SimulateReadspy {
  command <<<
    simulate_reads_py
  >>>
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task SimulateReadspy {
  command <<<
    simulate_reads_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
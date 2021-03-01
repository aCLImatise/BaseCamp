version 1.0

task Simulatepl {
  command <<<
    simulate_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
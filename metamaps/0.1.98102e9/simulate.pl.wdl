version 1.0

task Simulatepl {
  command <<<
    simulate_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
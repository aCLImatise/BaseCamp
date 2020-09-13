version 1.0

task GenerateRandomGraphpl {
  command <<<
    generate_random_graph_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
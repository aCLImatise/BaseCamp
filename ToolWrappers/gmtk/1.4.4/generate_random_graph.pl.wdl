version 1.0

task GenerateRandomGraphpl {
  command <<<
    generate_random_graph_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
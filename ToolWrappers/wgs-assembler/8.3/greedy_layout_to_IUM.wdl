version 1.0

task GreedyLayoutToIUM {
  command <<<
    greedy_layout_to_IUM
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
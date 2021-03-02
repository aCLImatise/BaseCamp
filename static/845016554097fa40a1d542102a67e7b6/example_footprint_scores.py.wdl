version 1.0

task ExampleFootprintScorespy {
  command <<<
    example_footprint_scores_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
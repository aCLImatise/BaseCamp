version 1.0

task ExampleFootprintScorespy {
  command <<<
    example_footprint_scores_py
  >>>
  output {
    File out_stdout = stdout()
  }
}
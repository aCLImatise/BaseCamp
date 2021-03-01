version 1.0

task GenerateCombinedSequence {
  command <<<
    generate_combined_sequence
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
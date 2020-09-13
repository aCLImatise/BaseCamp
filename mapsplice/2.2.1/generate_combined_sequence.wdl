version 1.0

task GenerateCombinedSequence {
  command <<<
    generate_combined_sequence
  >>>
  output {
    File out_stdout = stdout()
  }
}
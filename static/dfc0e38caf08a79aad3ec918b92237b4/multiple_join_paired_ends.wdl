version 1.0

task MultipleJoinPairedEnds.py {
  input {
    String inputInputDir
    String outputOutputDir
  }
  command <<<
    multiple_join_paired_ends.py \
      ~{if defined(inputInputDir) then ("--input_dir " +  '"' + inputInputDir + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""}
  >>>
}
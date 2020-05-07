version 1.0

task GeneratePrimersDenovo.py {
  input {
    String targetTargetSeqs
    String outputOutputFilePath
  }
  command <<<
    generate_primers_denovo.py \
      ~{if defined(targetTargetSeqs) then ("--target_seqs " +  '"' + targetTargetSeqs + '"') else ""} \
      ~{if defined(outputOutputFilePath) then ("--output_filepath " +  '"' + outputOutputFilePath + '"') else ""}
  >>>
}
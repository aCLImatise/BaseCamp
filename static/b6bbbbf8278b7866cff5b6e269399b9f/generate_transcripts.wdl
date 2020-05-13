version 1.0

task GenerateTranscripts.py {
  input {
    String inputInputFastAExons
    String inputInputDatabase
    String skipSkip
    String thresholdThresholdLength
    String outputOutputFastA
    String outputOutputExtra
    String outputOutput
  }
  command <<<
    generate_transcripts.py \
      ~{if defined(inputInputFastAExons) then ("--input_fasta_exons " +  '"' + inputInputFastAExons + '"') else ""} \
      ~{if defined(inputInputDatabase) then ("--input_database " +  '"' + inputInputDatabase + '"') else ""} \
      ~{if defined(skipSkip) then ("--skip " +  '"' + skipSkip + '"') else ""} \
      ~{if defined(thresholdThresholdLength) then ("--threshold_length " +  '"' + thresholdThresholdLength + '"') else ""} \
      ~{if defined(outputOutputFastA) then ("--output_fasta " +  '"' + outputOutputFastA + '"') else ""} \
      ~{if defined(outputOutputExtra) then ("--output_extra " +  '"' + outputOutputExtra + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}
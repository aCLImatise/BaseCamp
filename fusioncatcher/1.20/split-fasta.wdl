version 1.0

task SplitFasta.py {
  input {
    String inputInput
    String thresholdThreshold
    String seqSeqPerFastA
    Int sizeSize
    String seqsSeqs
    String outputOutput
    String outputOutputMaxLens
  }
  command <<<
    split-fasta.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{if defined(seqSeqPerFastA) then ("--seq_per_fasta " +  '"' + seqSeqPerFastA + '"') else ""} \
      ~{if defined(sizeSize) then ("--size " +  '"' + sizeSize + '"') else ""} \
      ~{if defined(seqsSeqs) then ("--seqs " +  '"' + seqsSeqs + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(outputOutputMaxLens) then ("--output-max-lens " +  '"' + outputOutputMaxLens + '"') else ""}
  >>>
}
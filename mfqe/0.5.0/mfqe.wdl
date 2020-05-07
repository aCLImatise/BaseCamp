version 1.0

task Mfqe {
  input {
    Boolean outputOutputUncompressed
    String inputInputFastA
    String inputInputFastQ
    String outputOutputFastAFiles
    String outputOutputFastQFiles
    String sequenceSequenceNameLists
  }
  command <<<
    mfqe \
      ~{true="--output-uncompressed" false="" outputOutputUncompressed} \
      ~{if defined(inputInputFastA) then ("--input-fasta " +  '"' + inputInputFastA + '"') else ""} \
      ~{if defined(inputInputFastQ) then ("--input-fastq " +  '"' + inputInputFastQ + '"') else ""} \
      ~{if defined(outputOutputFastAFiles) then ("--output-fasta-files " +  '"' + outputOutputFastAFiles + '"') else ""} \
      ~{if defined(outputOutputFastQFiles) then ("--output-fastq-files " +  '"' + outputOutputFastQFiles + '"') else ""} \
      ~{if defined(sequenceSequenceNameLists) then ("--sequence-name-lists " +  '"' + sequenceSequenceNameLists + '"') else ""}
  >>>
}
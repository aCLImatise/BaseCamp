version 1.0

task SnaptoolsDexFastq {
  input {
    String inputInputFastQ
    String outputOutputFastQ
    Array[String]+ indexIndexFastQList
  }
  command <<<
    snaptools dex-fastq \
      ~{if defined(inputInputFastQ) then ("--input-fastq " +  '"' + inputInputFastQ + '"') else ""} \
      ~{if defined(outputOutputFastQ) then ("--output-fastq " +  '"' + outputOutputFastQ + '"') else ""} \
      ~{if defined(indexIndexFastQList) then ("--index-fastq-list " +  '"' + indexIndexFastQList + '"') else ""}
  >>>
}
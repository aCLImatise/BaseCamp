version 1.0

task LongOrfs {
  input {
    String stopStopCodons
    String? sequenceSequenceFile
    String? outputOutputFile
  }
  command <<<
    long-orfs \
      ~{sequenceSequenceFile} \
      ~{if defined(stopStopCodons) then ("--stop_codons " +  '"' + stopStopCodons + '"') else ""} \
      ~{outputOutputFile}
  >>>
}
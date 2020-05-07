version 1.0

task Glimmer3 {
  input {
    String stopStopCodons
    String? sequenceSequenceFile
    String? icmIcmFile
    String? tagTag
  }
  command <<<
    glimmer3 \
      ~{sequenceSequenceFile} \
      ~{if defined(stopStopCodons) then ("--stop_codons " +  '"' + stopStopCodons + '"') else ""} \
      ~{icmIcmFile} \
      ~{tagTag}
  >>>
}
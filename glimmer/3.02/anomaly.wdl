version 1.0

task Anomaly {
  input {
    String aA
    Boolean sS
    Boolean tT
    String zZ
    String? sequenceSequenceFile
    String? coordCoordFile
  }
  command <<<
    anomaly \
      ~{sequenceSequenceFile} \
      ~{if defined(aA) then ("-A " +  '"' + aA + '"') else ""} \
      ~{true="-s" false="" sS} \
      ~{true="-t" false="" tT} \
      ~{if defined(zZ) then ("-Z " +  '"' + zZ + '"') else ""} \
      ~{coordCoordFile}
  >>>
}
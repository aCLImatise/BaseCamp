version 1.0

task BiopetSeqstat {
  input {
    String? seqSeqStat
    String? toolToolName
    String? toolTool
    String? argsArgs
  }
  command <<<
    biopet-seqstat \
      ~{seqSeqStat} \
      ~{toolToolName} \
      ~{toolTool} \
      ~{argsArgs}
  >>>
}
version 1.0

task BiopetSeattleseqkit {
  input {
    String? seattleSeattleSeqKit
    String? toolToolName
    String? toolTool
    String? argsArgs
  }
  command <<<
    biopet-seattleseqkit \
      ~{seattleSeattleSeqKit} \
      ~{toolToolName} \
      ~{toolTool} \
      ~{argsArgs}
  >>>
}
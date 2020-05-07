version 1.0

task Ct2dotStructure number {
  input {
    String? ctCtFile
    String? structureStructureNumber
    String? bracketBracketFile
  }
  command <<<
    ct2dot structure number \
      ~{ctCtFile} \
      ~{structureStructureNumber} \
      ~{bracketBracketFile}
  >>>
}
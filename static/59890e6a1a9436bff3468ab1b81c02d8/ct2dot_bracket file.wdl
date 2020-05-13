version 1.0

task Ct2dotBracket file {
  input {
    String? ctCtFile
    String? structureStructureNumber
    String? bracketBracketFile
  }
  command <<<
    ct2dot bracket file \
      ~{ctCtFile} \
      ~{structureStructureNumber} \
      ~{bracketBracketFile}
  >>>
}
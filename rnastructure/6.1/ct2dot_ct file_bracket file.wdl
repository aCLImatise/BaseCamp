version 1.0

task Ct2dotCt fileBracket file {
  input {
    String? structureStructureNumber
    String? bracketBracketFile
  }
  command <<<
    ct2dot ct file bracket file \
      ~{structureStructureNumber} \
      ~{bracketBracketFile}
  >>>
}
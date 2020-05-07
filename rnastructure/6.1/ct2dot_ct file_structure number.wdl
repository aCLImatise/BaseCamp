version 1.0

task Ct2dotCt fileStructure number {
  input {
    String? bracketBracketFile
  }
  command <<<
    ct2dot ct file structure number \
      ~{bracketBracketFile}
  >>>
}
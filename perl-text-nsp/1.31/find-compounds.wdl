version 1.0

task FindCompounds.pl {
  input {
    Boolean newNewLine
    String? outputOutputFile
    String? sourceSourceFile
    String? compoundCompoundWordList
  }
  command <<<
    find-compounds.pl \
      ~{outputOutputFile} \
      ~{true="--newline" false="" newNewLine} \
      ~{sourceSourceFile} \
      ~{compoundCompoundWordList}
  >>>
}
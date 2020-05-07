version 1.0

task _compseq {
  input {
    Boolean wordWord
    Boolean inInFile
    Boolean frameFrame
  }
  command <<<
    _compseq \
      ~{true="-word" false="" wordWord} \
      ~{true="-infile" false="" inInFile} \
      ~{true="-frame" false="" frameFrame}
  >>>
}
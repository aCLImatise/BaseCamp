version 1.0

task Compseq {
  input {
    Boolean wordWord
    Boolean inInFile
    Boolean frameFrame
  }
  command <<<
    compseq \
      ~{true="-word" false="" wordWord} \
      ~{true="-infile" false="" inInFile} \
      ~{true="-frame" false="" frameFrame}
  >>>
}
version 1.0

task MakehmmerdbSeqfile {
  input {
    String? binaryBinaryFile
  }
  command <<<
    makehmmerdb seqfile \
      ~{binaryBinaryFile}
  >>>
}
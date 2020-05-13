version 1.0

task MakehmmerdbBinaryfile {
  input {
    String? seqSeqFile
    String? binaryBinaryFile
  }
  command <<<
    makehmmerdb binaryfile \
      ~{seqSeqFile} \
      ~{binaryBinaryFile}
  >>>
}
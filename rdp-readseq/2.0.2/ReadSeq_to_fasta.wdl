version 1.0

task ReadSeqToFasta {
  input {
    String maskMask
  }
  command <<<
    ReadSeq to-fasta \
      ~{if defined(maskMask) then ("--mask " +  '"' + maskMask + '"') else ""}
  >>>
}
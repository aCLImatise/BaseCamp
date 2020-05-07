version 1.0

task OSubsampleFastaFileINTEGER {
  input {
    File? fileFile
    Int? integerInteger
    File? fileFile
  }
  command <<<
    o-subsample-fasta-file INTEGER \
      ~{fileFile} \
      ~{integerInteger} \
      ~{fileFile}
  >>>
}
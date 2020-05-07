version 1.0

task OSubsampleFastaFileFILEFILE {
  input {
    Int? integerInteger
    File? fileFile
  }
  command <<<
    o-subsample-fasta-file FILE FILE \
      ~{integerInteger} \
      ~{fileFile}
  >>>
}
version 1.0

task OSubsampleFastaFileFILEINTEGER {
  input {
    File? fileFile
  }
  command <<<
    o-subsample-fasta-file FILE INTEGER \
      ~{fileFile}
  >>>
}
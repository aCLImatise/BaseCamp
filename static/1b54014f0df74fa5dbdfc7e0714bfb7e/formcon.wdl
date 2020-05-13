version 1.0

task Formcon {
  input {
    File? fileFileOfReads
    Int? minMinDistance
    Int? maxMaxDistance
  }
  command <<<
    formcon \
      ~{fileFileOfReads} \
      ~{minMinDistance} \
      ~{maxMaxDistance}
  >>>
}
version 1.0

task MapviewToBed.pl {
  input {
    Int? minMinQual
    Int? maxMaxHits
    File? fileFile
  }
  command <<<
    mapviewToBed.pl \
      ~{minMinQual} \
      ~{maxMaxHits} \
      ~{fileFile}
  >>>
}
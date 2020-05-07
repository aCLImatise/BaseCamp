version 1.0

task BedToPslChromSizesBedFile {
  input {
    String? pslPslFile
  }
  command <<<
    bedToPsl chromSizes bedFile \
      ~{pslPslFile}
  >>>
}
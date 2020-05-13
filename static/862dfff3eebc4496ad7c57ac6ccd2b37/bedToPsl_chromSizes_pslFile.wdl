version 1.0

task BedToPslChromSizesPslFile {
  input {
    String? bedBedFile
    String? pslPslFile
  }
  command <<<
    bedToPsl chromSizes pslFile \
      ~{bedBedFile} \
      ~{pslPslFile}
  >>>
}
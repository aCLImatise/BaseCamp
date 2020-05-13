version 1.0

task BedToPslBedFile {
  input {
    String? chromChromSizes
    String? bedBedFile
    String? pslPslFile
  }
  command <<<
    bedToPsl bedFile \
      ~{chromChromSizes} \
      ~{bedBedFile} \
      ~{pslPslFile}
  >>>
}
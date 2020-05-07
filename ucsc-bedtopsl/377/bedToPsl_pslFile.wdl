version 1.0

task BedToPslPslFile {
  input {
    String? chromChromSizes
    String? bedBedFile
    String? pslPslFile
  }
  command <<<
    bedToPsl pslFile \
      ~{chromChromSizes} \
      ~{bedBedFile} \
      ~{pslPslFile}
  >>>
}
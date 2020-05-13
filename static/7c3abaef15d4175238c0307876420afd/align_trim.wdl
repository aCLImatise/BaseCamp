version 1.0

task AlignTrim {
  input {
    String? bedBedFile
  }
  command <<<
    align_trim \
      ~{bedBedFile}
  >>>
}
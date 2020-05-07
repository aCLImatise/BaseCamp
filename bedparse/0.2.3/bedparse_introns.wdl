version 1.0

task BedparseIntrons {
  input {
    String? bedBedFile
  }
  command <<<
    bedparse introns \
      ~{bedBedFile}
  >>>
}
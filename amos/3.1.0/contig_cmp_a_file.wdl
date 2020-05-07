version 1.0

task ContigCmpAFile {
  input {
    String? bBFile
  }
  command <<<
    contig-cmp a-file \
      ~{bBFile}
  >>>
}
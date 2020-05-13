version 1.0

task ContigCmpBFile {
  input {
    String? aAFile
    String? bBFile
  }
  command <<<
    contig-cmp b-file \
      ~{aAFile} \
      ~{bBFile}
  >>>
}
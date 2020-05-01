version 1.0

task GenomedataInfo {
  input {
    String? gdGdArchive
  }
  command <<<
    genomedata-info \
      ~{gdGdArchive}
  >>>
}
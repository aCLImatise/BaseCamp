version 1.0

task HgBbiDbLinkTrackName {
  input {
    String? databaseDatabase
    String? trackTrackName
    File? filenameFilename
  }
  command <<<
    hgBbiDbLink trackName \
      ~{databaseDatabase} \
      ~{trackTrackName} \
      ~{filenameFilename}
  >>>
}
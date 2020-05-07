version 1.0

task HgBbiDbLinkFileName {
  input {
    String? databaseDatabase
    String? trackTrackName
    File? filenameFilename
  }
  command <<<
    hgBbiDbLink fileName \
      ~{databaseDatabase} \
      ~{trackTrackName} \
      ~{filenameFilename}
  >>>
}
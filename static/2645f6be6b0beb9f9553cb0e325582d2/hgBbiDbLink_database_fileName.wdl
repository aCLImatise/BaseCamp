version 1.0

task HgBbiDbLinkDatabaseFileName {
  input {
    String? trackTrackName
    File? filenameFilename
  }
  command <<<
    hgBbiDbLink database fileName \
      ~{trackTrackName} \
      ~{filenameFilename}
  >>>
}
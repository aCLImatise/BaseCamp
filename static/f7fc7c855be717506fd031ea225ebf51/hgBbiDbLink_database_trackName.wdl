version 1.0

task HgBbiDbLinkDatabaseTrackName {
  input {
    File? filenameFilename
  }
  command <<<
    hgBbiDbLink database trackName \
      ~{filenameFilename}
  >>>
}
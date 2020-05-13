version 1.0

task NgsArchiveLinker.pl {
  input {
    Boolean ignoreIgnore
    Boolean renameRename
    Boolean flatFlat
    Boolean usernameUsername
    Boolean passwordPassword
    Boolean downloadDownload
    Boolean verboseVerbose
  }
  command <<<
    ngsArchiveLinker.pl \
      ~{true="--ignore" false="" ignoreIgnore} \
      ~{true="--rename" false="" renameRename} \
      ~{true="--flat" false="" flatFlat} \
      ~{true="--username" false="" usernameUsername} \
      ~{true="--password" false="" passwordPassword} \
      ~{true="--download" false="" downloadDownload} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}
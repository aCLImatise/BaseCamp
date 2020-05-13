version 1.0

task DriveFileId {
  input {
    Boolean hiddenHidden
  }
  command <<<
    drive file-id \
      ~{true="-hidden" false="" hiddenHidden}
  >>>
}
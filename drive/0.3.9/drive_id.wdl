version 1.0

task DriveId {
  input {
    Boolean hiddenHidden
  }
  command <<<
    drive id \
      ~{true="-hidden" false="" hiddenHidden}
  >>>
}
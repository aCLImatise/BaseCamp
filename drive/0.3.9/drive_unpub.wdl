version 1.0

task DriveUnpub {
  input {
    Boolean hiddenHidden
    Boolean idId
    Boolean quietQuiet
  }
  command <<<
    drive unpub \
      ~{true="-hidden" false="" hiddenHidden} \
      ~{true="-id" false="" idId} \
      ~{true="-quiet" false="" quietQuiet}
  >>>
}
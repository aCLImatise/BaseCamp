version 1.0

task DriveMd5sum {
  input {
    Boolean hiddenHidden
    Boolean idId
    Boolean quietQuiet
    Boolean recursiveRecursive
  }
  command <<<
    drive md5sum \
      ~{true="-hidden" false="" hiddenHidden} \
      ~{true="-id" false="" idId} \
      ~{true="-quiet" false="" quietQuiet} \
      ~{true="-recursive" false="" recursiveRecursive}
  >>>
}
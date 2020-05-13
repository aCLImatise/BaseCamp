version 1.0

task DriveStat {
  input {
    Boolean hiddenHidden
    Boolean idId
    Boolean md5sumMd5sum
    Boolean quietQuiet
    Boolean recursiveRecursive
  }
  command <<<
    drive stat \
      ~{true="-hidden" false="" hiddenHidden} \
      ~{true="-id" false="" idId} \
      ~{true="-md5sum" false="" md5sumMd5sum} \
      ~{true="-quiet" false="" quietQuiet} \
      ~{true="-recursive" false="" recursiveRecursive}
  >>>
}
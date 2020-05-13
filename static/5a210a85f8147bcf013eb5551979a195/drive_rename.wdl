version 1.0

task DriveRename {
  input {
    Boolean idId
    Boolean localLocal
    Boolean quietQuiet
    Boolean remoteRemote
  }
  command <<<
    drive rename \
      ~{true="-id" false="" idId} \
      ~{true="-local" false="" localLocal} \
      ~{true="-quiet" false="" quietQuiet} \
      ~{true="-remote" false="" remoteRemote}
  >>>
}
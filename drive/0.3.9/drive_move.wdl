version 1.0

task DriveMove {
  input {
    Boolean idId
    Boolean keepKeepParent
    Boolean quietQuiet
  }
  command <<<
    drive move \
      ~{true="-id" false="" idId} \
      ~{true="-keep-parent" false="" keepKeepParent} \
      ~{true="-quiet" false="" quietQuiet}
  >>>
}
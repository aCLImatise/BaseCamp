version 1.0

task DriveMv {
  input {
    Boolean idId
    Boolean keepKeepParent
    Boolean quietQuiet
  }
  command <<<
    drive mv \
      ~{true="-id" false="" idId} \
      ~{true="-keep-parent" false="" keepKeepParent} \
      ~{true="-quiet" false="" quietQuiet}
  >>>
}
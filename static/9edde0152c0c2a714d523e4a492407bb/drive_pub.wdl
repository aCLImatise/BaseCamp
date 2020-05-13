version 1.0

task DrivePub {
  input {
    Boolean hiddenHidden
    Boolean idId
    Boolean quietQuiet
  }
  command <<<
    drive pub \
      ~{true="-hidden" false="" hiddenHidden} \
      ~{true="-id" false="" idId} \
      ~{true="-quiet" false="" quietQuiet}
  >>>
}
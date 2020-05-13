version 1.0

task DriveQr {
  input {
    Boolean idId
    Boolean verboseVerbose
  }
  command <<<
    drive qr \
      ~{true="-id" false="" idId} \
      ~{true="-verbose" false="" verboseVerbose}
  >>>
}
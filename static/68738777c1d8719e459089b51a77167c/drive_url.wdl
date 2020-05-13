version 1.0

task DriveUrl {
  input {
    Boolean idId
  }
  command <<<
    drive url \
      ~{true="-id" false="" idId}
  >>>
}
version 1.0

task Enotify {
  input {
    Boolean? email
    Boolean? tool
  }
  command <<<
    enotify \
      ~{true="-email" false="" email} \
      ~{true="-tool" false="" tool}
  >>>
  parameter_meta {
    email: "Contact person's address"
    tool: "Name of script or program"
  }
}
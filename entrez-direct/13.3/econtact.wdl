version 1.0

task Econtact {
  input {
    Boolean? email
    Boolean? tool
  }
  command <<<
    econtact \
      ~{true="-email" false="" email} \
      ~{true="-tool" false="" tool}
  >>>
  parameter_meta {
    email: "Contact person's address"
    tool: "Name of script or program"
  }
}
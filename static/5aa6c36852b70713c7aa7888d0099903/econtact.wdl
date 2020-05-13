version 1.0

task Econtact {
  input {
    Boolean emailEmail
    Boolean toolTool
  }
  command <<<
    econtact \
      ~{true="-email" false="" emailEmail} \
      ~{true="-tool" false="" toolTool}
  >>>
}
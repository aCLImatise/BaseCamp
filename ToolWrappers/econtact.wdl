version 1.0

task Econtact {
  input {
    Boolean? email
    Boolean? tool
  }
  command <<<
    econtact \
      ~{if (email) then "-email" else ""} \
      ~{if (tool) then "-tool" else ""}
  >>>
  parameter_meta {
    email: "Contact person's address"
    tool: "Name of script or program"
  }
  output {
    File out_stdout = stdout()
  }
}
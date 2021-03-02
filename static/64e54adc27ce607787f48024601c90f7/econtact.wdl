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
  runtime {
    docker: "quay.io/biocontainers/entrez-direct:13.9--pl526h375a9b1_1"
  }
  parameter_meta {
    email: "Contact person's address"
    tool: "Name of script or program"
  }
  output {
    File out_stdout = stdout()
  }
}
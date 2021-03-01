version 1.0

task Enotify {
  input {
    Boolean? email
    Boolean? tool
  }
  command <<<
    enotify \
      ~{if (email) then "-email" else ""} \
      ~{if (tool) then "-tool" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    email: "Contact person's address"
    tool: "Name of script or program"
  }
  output {
    File out_stdout = stdout()
  }
}
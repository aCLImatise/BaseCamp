version 1.0

task DriveEditdesc {
  input {
    String? description
    Boolean? id
    Boolean? piped
  }
  command <<<
    drive edit_desc \
      ~{if defined(description) then ("-description " +  '"' + description + '"') else ""} \
      ~{if (id) then "-id" else ""} \
      ~{if (piped) then "-piped" else ""}
  >>>
  parameter_meta {
    description: "set the description"
    id: "open by id instead of path"
    piped: "get content in from standard input (stdin)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task DriveEditdesc {
  input {
    String? description
    Boolean? piped
  }
  command <<<
    drive edit_desc \
      ~{if defined(description) then ("-description " +  '"' + description + '"') else ""} \
      ~{if (piped) then "-piped" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    description: "set the description"
    piped: "get content in from standard input (stdin)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}
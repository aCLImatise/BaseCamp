version 1.0

task DriveUrl {
  input {
    Boolean? id
  }
  command <<<
    drive url \
      ~{if (id) then "-id" else ""}
  >>>
  parameter_meta {
    id: "resolve url by id instead of path\\n"
  }
  output {
    File out_stdout = stdout()
  }
}
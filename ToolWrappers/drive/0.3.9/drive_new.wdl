version 1.0

task DriveNew {
  input {
    Boolean? folder
    File? mime_key
  }
  command <<<
    drive new \
      ~{if (folder) then "-folder" else ""} \
      ~{if defined(mime_key) then ("-mime-key " +  '"' + mime_key + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    folder: "create a folder if set otherwise create a regular file"
    mime_key: "coerce the file to this mimeType\\n"
  }
  output {
    File out_stdout = stdout()
  }
}
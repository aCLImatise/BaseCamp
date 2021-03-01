version 1.0

task DriveUnpub {
  input {
    Boolean? id
    Boolean? quiet
  }
  command <<<
    drive unpub \
      ~{if (id) then "-id" else ""} \
      ~{if (quiet) then "-quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    id: "unpublish by id instead of path"
    quiet: "if set, do not log anything but errors\\n"
  }
  output {
    File out_stdout = stdout()
  }
}
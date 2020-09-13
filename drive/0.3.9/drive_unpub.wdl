version 1.0

task DriveUnpub {
  input {
    Boolean? hidden
    Boolean? id
    Boolean? quiet
  }
  command <<<
    drive unpub \
      ~{if (hidden) then "-hidden" else ""} \
      ~{if (id) then "-id" else ""} \
      ~{if (quiet) then "-quiet" else ""}
  >>>
  parameter_meta {
    hidden: "allows pulling of hidden paths"
    id: "unpublish by id instead of path"
    quiet: "if set, do not log anything but errors\\n"
  }
  output {
    File out_stdout = stdout()
  }
}
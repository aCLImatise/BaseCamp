version 1.0

task DriveMove {
  input {
    Boolean? id
    Boolean? keep_parent
    Boolean? quiet
  }
  command <<<
    drive move \
      ~{if (id) then "-id" else ""} \
      ~{if (keep_parent) then "-keep-parent" else ""} \
      ~{if (quiet) then "-quiet" else ""}
  >>>
  parameter_meta {
    id: "move by id instead of path"
    keep_parent: "ensures that when moving a file into a destination, that we also retain its original parent so that it will exist in more than one folder"
    quiet: "if set, do not log anything but errors\\n"
  }
  output {
    File out_stdout = stdout()
  }
}
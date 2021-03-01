version 1.0

task DriveMove {
  input {
    Boolean? keep_parent
    Boolean? quiet
  }
  command <<<
    drive move \
      ~{if (keep_parent) then "-keep-parent" else ""} \
      ~{if (quiet) then "-quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    keep_parent: "ensures that when moving a file into a destination, that we also retain its original parent so that it will exist in more than one folder"
    quiet: "if set, do not log anything but errors\\n"
  }
  output {
    File out_stdout = stdout()
  }
}
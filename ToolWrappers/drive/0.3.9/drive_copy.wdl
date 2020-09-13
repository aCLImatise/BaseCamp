version 1.0

task DriveCopy {
  input {
    Boolean? id
    Boolean? quiet
    Boolean? recursive
  }
  command <<<
    drive copy \
      ~{if (id) then "-id" else ""} \
      ~{if (quiet) then "-quiet" else ""} \
      ~{if (recursive) then "-recursive" else ""}
  >>>
  parameter_meta {
    id: "copy by id instead of path"
    quiet: "if set, do not log anything but errors"
    recursive: "recursive copying\\n"
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task DrivePub {
  input {
    Boolean? hidden
    Boolean? id
    Boolean? quiet
  }
  command <<<
    drive pub \
      ~{if (hidden) then "-hidden" else ""} \
      ~{if (id) then "-id" else ""} \
      ~{if (quiet) then "-quiet" else ""}
  >>>
  parameter_meta {
    hidden: "allows publishing of hidden paths"
    id: "publish by id instead of path"
    quiet: "if set, do not log anything but errors\\n"
  }
  output {
    File out_stdout = stdout()
  }
}
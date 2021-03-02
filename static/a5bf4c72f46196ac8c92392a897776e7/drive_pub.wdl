version 1.0

task DrivePub {
  input {
    Boolean? id
    Boolean? quiet
  }
  command <<<
    drive pub \
      ~{if (id) then "-id" else ""} \
      ~{if (quiet) then "-quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    id: "publish by id instead of path"
    quiet: "if set, do not log anything but errors\\n"
  }
  output {
    File out_stdout = stdout()
  }
}
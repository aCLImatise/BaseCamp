version 1.0

task DriveRename {
  input {
    Boolean? force
    Boolean? local
    Boolean? quiet
    Boolean? remote
  }
  command <<<
    drive rename \
      ~{if (force) then "-force" else ""} \
      ~{if (local) then "-local" else ""} \
      ~{if (quiet) then "-quiet" else ""} \
      ~{if (remote) then "-remote" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    force: "coerce rename even if remote already exists"
    local: "rename local as well (default true)"
    quiet: "if set, do not log anything but errors"
    remote: "rename remote as well (default true)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}
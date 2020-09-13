version 1.0

task DriveMd5sum {
  input {
    Int? depth
    Boolean? hidden
    Boolean? id
    Boolean? quiet
    Boolean? recursive
  }
  command <<<
    drive md5sum \
      ~{if defined(depth) then ("-depth " +  '"' + depth + '"') else ""} \
      ~{if (hidden) then "-hidden" else ""} \
      ~{if (id) then "-id" else ""} \
      ~{if (quiet) then "-quiet" else ""} \
      ~{if (recursive) then "-recursive" else ""}
  >>>
  parameter_meta {
    depth: "max traversal depth (default 1)"
    hidden: "discover hidden paths"
    id: "stat by id instead of path"
    quiet: "if set, do not log anything but errors"
    recursive: "recursively discover folders\\n"
  }
  output {
    File out_stdout = stdout()
  }
}
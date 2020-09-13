version 1.0

task DriveId {
  input {
    Int? depth
    Boolean? hidden
  }
  command <<<
    drive id \
      ~{if defined(depth) then ("-depth " +  '"' + depth + '"') else ""} \
      ~{if (hidden) then "-hidden" else ""}
  >>>
  parameter_meta {
    depth: "maximum recursion depth (default 1)"
    hidden: "allows operation on hidden paths (default true)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task DriveId {
  input {
    Int? depth
  }
  command <<<
    drive id \
      ~{if defined(depth) then ("-depth " +  '"' + depth + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    depth: "maximum recursion depth (default 1)"
  }
  output {
    File out_stdout = stdout()
  }
}
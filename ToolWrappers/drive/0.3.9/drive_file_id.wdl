version 1.0

task DriveFileid {
  input {
    Int? depth
  }
  command <<<
    drive file_id \
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
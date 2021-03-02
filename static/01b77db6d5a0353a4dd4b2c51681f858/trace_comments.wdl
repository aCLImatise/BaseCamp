version 1.0

task TraceComments {
  input {
    String get_comment
  }
  command <<<
    trace_comments \
      ~{get_comment}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    get_comment: "dir"
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task TraceComments {
  input {
    String? getGetComment
  }
  command <<<
    trace_comments \
      ~{getGetComment}
  >>>
}
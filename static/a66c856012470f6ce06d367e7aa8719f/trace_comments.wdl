version 1.0

task TraceComments {
  input {
    String get_comment
    String failed_read_file
  }
  command <<<
    trace_comments \
      ~{get_comment} \
      ~{failed_read_file}
  >>>
  parameter_meta {
    get_comment: "dir"
    failed_read_file: "Failed to read file, or usage message displayed"
  }
}
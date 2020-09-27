version 1.0

task TraceComment {
  input {
    Boolean? suppresses_display_fieldid
    String get_comment
    String? field
  }
  command <<<
    trace_comment \
      ~{get_comment} \
      ~{field} \
      ~{if (suppresses_display_fieldid) then "-c" else ""}
  >>>
  parameter_meta {
    suppresses_display_fieldid: "Suppresses display of field-ID"
    get_comment: ""
    field: ""
  }
  output {
    File out_stdout = stdout()
  }
}
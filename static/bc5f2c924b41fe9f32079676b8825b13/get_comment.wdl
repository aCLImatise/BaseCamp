version 1.0

task GetComment {
  input {
    Boolean? suppresses_display_fieldid
    String? field
  }
  command <<<
    get_comment \
      ~{field} \
      ~{if (suppresses_display_fieldid) then "-c" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/staden_io_lib:1.14.14--h9dace67_0"
  }
  parameter_meta {
    suppresses_display_fieldid: "Suppresses display of field-ID"
    field: ""
  }
  output {
    File out_stdout = stdout()
  }
}
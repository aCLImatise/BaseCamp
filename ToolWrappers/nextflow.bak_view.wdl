version 1.0

task NextflowbakView {
  input {
    Boolean? list_repository_contentdefault
    Boolean? hide_header_linedefault
    String view
    String project
    String name
  }
  command <<<
    nextflow_bak view \
      ~{view} \
      ~{project} \
      ~{name} \
      ~{if (list_repository_contentdefault) then "-l" else ""} \
      ~{if (hide_header_linedefault) then "-q" else ""}
  >>>
  parameter_meta {
    list_repository_contentdefault: "List repository content\\nDefault: false"
    hide_header_linedefault: "Hide header line\\nDefault: false\\n"
    view: ""
    project: ""
    name: ""
  }
  output {
    File out_stdout = stdout()
  }
}
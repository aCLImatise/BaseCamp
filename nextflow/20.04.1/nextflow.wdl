version 1.0

task Nextflow.bakView {
  input {
    Boolean? list_repository_content
    Boolean? hide_header_line
    String view
    String project
    String name
  }
  command <<<
    nextflow.bak view \
      ~{view} \
      ~{project} \
      ~{name} \
      ~{true="-l" false="" list_repository_content} \
      ~{true="-q" false="" hide_header_line}
  >>>
  parameter_meta {
    list_repository_content: "List repository content Default: false"
    hide_header_line: "Hide header line Default: false"
    view: ""
    project: ""
    name: ""
  }
}
version 1.0

task NextflowView {
  input {
    Boolean? list_repository_contentdefault
    Boolean? hide_header_linedefault
    String view
    String project
    String name
  }
  command <<<
    nextflow view \
      ~{view} \
      ~{project} \
      ~{name} \
      ~{if (list_repository_contentdefault) then "-l" else ""} \
      ~{if (hide_header_linedefault) then "-q" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/nextflow:20.10.0--hecda079_0"
  }
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
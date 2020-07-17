version 1.0

task DxJobutilParseLink {
  input {
    Boolean? no_project
    String dx_link
  }
  command <<<
    dx-jobutil-parse-link \
      ~{dx_link} \
      ~{true="--no-project" false="" no_project}
  >>>
  parameter_meta {
    no_project: "Ignore project ID in an extended dxlink - just print the object ID"
    dx_link: "Link to parse"
  }
}
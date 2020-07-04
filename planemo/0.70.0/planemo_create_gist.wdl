version 1.0

task PlanemoCreateGist {
  input {
    Boolean? link_type
    File file_path
  }
  command <<<
    planemo create_gist \
      ~{file_path} \
      ~{true="--link_type" false="" link_type}
  >>>
  parameter_meta {
    link_type: "[raw|html]  Link type to generate for the file."
    file_path: ""
  }
}
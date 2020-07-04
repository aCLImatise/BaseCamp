version 1.0

task NfCoreBumpVersion {
  input {
    Boolean? next_flow
    String pipeline_directory
    String new_version
  }
  command <<<
    nf-core bump-version \
      ~{pipeline_directory} \
      ~{new_version} \
      ~{true="--nextflow" false="" next_flow}
  >>>
  parameter_meta {
    next_flow: "Bump required nextflow version instead of pipeline version"
    pipeline_directory: ""
    new_version: ""
  }
}
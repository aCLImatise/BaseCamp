version 1.0

task NfCoreLint {
  input {
    Boolean? release
    String pipeline_directory
  }
  command <<<
    nf-core lint \
      ~{pipeline_directory} \
      ~{true="--release" false="" release}
  >>>
  parameter_meta {
    release: "Execute additional checks for release-ready workflows."
    pipeline_directory: ""
  }
}
version 1.0

task NfcoreLint {
  input {
    Boolean? release
    Directory pipeline_directory
  }
  command <<<
    nf_core lint \
      ~{pipeline_directory} \
      ~{if (release) then "--release" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    release: "Execute additional checks for release-ready workflows."
    pipeline_directory: ""
  }
  output {
    File out_stdout = stdout()
  }
}
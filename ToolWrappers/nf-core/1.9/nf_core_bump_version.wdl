version 1.0

task NfcoreBumpversion {
  input {
    Boolean? next_flow
    Directory pipeline_directory
    String new_version
  }
  command <<<
    nf_core bump_version \
      ~{pipeline_directory} \
      ~{new_version} \
      ~{if (next_flow) then "--nextflow" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    next_flow: "Bump required nextflow version instead of pipeline version"
    pipeline_directory: ""
    new_version: ""
  }
  output {
    File out_stdout = stdout()
  }
}
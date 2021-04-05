version 1.0

task NfcoreSchemaBuild {
  input {
    Boolean? no_prompts
    Boolean? web_only
    String? url
    Directory pipeline_directory
  }
  command <<<
    nf_core schema build \
      ~{pipeline_directory} \
      ~{if (no_prompts) then "--no-prompts" else ""} \
      ~{if (web_only) then "--web-only" else ""} \
      ~{if defined(url) then ("--url " +  '"' + url + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/nf-core:1.13.3--pyh3252c3a_0"
  }
  parameter_meta {
    no_prompts: "Do not confirm changes, just update parameters and exit"
    web_only: "Skip building using Nextflow config, just launch the web tool"
    url: "Customise the builder URL (for development work)"
    pipeline_directory: ""
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task DeepacGetmodels {
  input {
    Boolean? sensitive
    Boolean? rapid
    Boolean? fetch
    Boolean? download_only
  }
  command <<<
    deepac getmodels \
      ~{if (sensitive) then "--sensitive" else ""} \
      ~{if (rapid) then "--rapid" else ""} \
      ~{if (fetch) then "--fetch" else ""} \
      ~{if (download_only) then "--download-only" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/deepac:0.13.6--py_0"
  }
  parameter_meta {
    sensitive: "Rebuild the sensitive model."
    rapid: "Rebuild the rapid CNN model."
    fetch: "Fetch and compile the latest models and configs from the\\nonline repository."
    download_only: "Fetch weights and config files but do not compile the\\nmodels.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}
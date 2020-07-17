version 1.0

task HcaMatrixDownloader {
  input {
    String? project
    String? query
    String? format
    String? out_prefix
    String download
    String data
    String via
    String hca
  }
  command <<<
    hca-matrix-downloader \
      ~{download} \
      ~{data} \
      ~{via} \
      ~{hca} \
      ~{if defined(project) then ("--project " +  '"' + project + '"') else ""} \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(out_prefix) then ("--outprefix " +  '"' + out_prefix + '"') else ""}
  >>>
  parameter_meta {
    project: "The project's Project Title, Project Label or link- derived ID, obtained from the HCA DCP, wrapped in quotes."
    query: "A complete /v1/matrix/ POST query in JSON format. Consult https://matrix.dev.data.humancellatlas.org/ for details."
    format: "Format to download matrix in: loom, csv or mtx (Matrix Market). Defaults to loom."
    out_prefix: "Output prefix for downloaded matrix. Leave default name (the Matrix API request ID) if not specified."
    download: ""
    data: ""
    via: ""
    hca: ""
  }
}
version 1.0

task Hcamatrixdownloader {
  input {
    String? project
    Int? query
    String? format
    String? out_prefix
    String download
    String data
    String via
    String hca
  }
  command <<<
    hca_matrix_downloader \
      ~{download} \
      ~{data} \
      ~{via} \
      ~{hca} \
      ~{if defined(project) then ("--project " +  '"' + project + '"') else ""} \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(out_prefix) then ("--outprefix " +  '"' + out_prefix + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    project: "The project's Project Title, Project Label or link-\\nderived ID, obtained from the HCA DCP, wrapped in\\nquotes."
    query: "A complete /v1/matrix/ POST query in JSON format.\\nConsult https://matrix.dev.data.humancellatlas.org/\\nfor details."
    format: "Format to download matrix in: loom, csv or mtx (Matrix\\nMarket). Defaults to loom."
    out_prefix: "Output prefix for downloaded matrix. Leave default\\nname (the Matrix API request ID) if not specified.\\n"
    download: ""
    data: ""
    via: ""
    hca: ""
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task Hcamatrixdownloader {
  input {
    String? project
    String? format
    File? out_prefix
    String? species
    String download
    String data
    String via
    String hca
    String dcp
    String ftp_dot
    String requires
    String files
    String are
    String downloaded
    String into
    String current
    String working
    Directory directory_dot
  }
  command <<<
    hca_matrix_downloader \
      ~{download} \
      ~{data} \
      ~{via} \
      ~{hca} \
      ~{dcp} \
      ~{ftp_dot} \
      ~{requires} \
      ~{files} \
      ~{are} \
      ~{downloaded} \
      ~{into} \
      ~{current} \
      ~{working} \
      ~{directory_dot} \
      ~{if defined(project) then ("--project " +  '"' + project + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(out_prefix) then ("--outprefix " +  '"' + out_prefix + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hca-matrix-downloader:0.0.4--py_0"
  }
  parameter_meta {
    project: "The project's Project Title, Project short name or\\nlink-derived ID, obtained from the HCA DCP, wrapped in\\nquotes."
    format: "Format to download matrix in: loom or mtx (Matrix\\nMarket). Defaults to loom."
    out_prefix: "Output prefix to replace project uuid in filename of\\ndownloaded matrix. Leave as project uuid if not\\nspecified."
    species: "The species to use, when a project has more than one.\\n"
    download: ""
    data: ""
    via: ""
    hca: ""
    dcp: ""
    ftp_dot: ""
    requires: ""
    files: ""
    are: ""
    downloaded: ""
    into: ""
    current: ""
    working: ""
    directory_dot: ""
  }
  output {
    File out_stdout = stdout()
    File out_out_prefix = "${in_out_prefix}"
  }
}
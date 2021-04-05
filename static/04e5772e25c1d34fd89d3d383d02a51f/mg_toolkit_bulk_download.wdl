version 1.0

task MgtoolkitBulkDownload {
  input {
    Int? accession
    File? output_path
    String? pipeline
    String? result_group
  }
  command <<<
    mg_toolkit bulk_download \
      ~{if defined(accession) then ("--accession " +  '"' + accession + '"') else ""} \
      ~{if defined(output_path) then ("--output_path " +  '"' + output_path + '"') else ""} \
      ~{if defined(pipeline) then ("--pipeline " +  '"' + pipeline + '"') else ""} \
      ~{if defined(result_group) then ("--result_group " +  '"' + result_group + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mg-toolkit:0.10.0--py_0"
  }
  parameter_meta {
    accession: "Provide the study/project accession of your interest, e.g. ERP001736, SRP000319. The study must be publicly available in MGnify."
    output_path: "Location of the output directory, where the downloadable files are written to.\\nDEFAULT: CWD"
    pipeline: "Specify the version of the pipeline you are interested in.\\nLets say your study of interest has been analysed with\\nmultiple version, but you are only interested in a particular\\nversion then used this option to filter down the results by\\nthe version you interested in.\\nDEFAULT: Downloads all versions"
    result_group: "Provide a single result group if needed.\\nSupported result groups are:\\n- statistics\\n- sequence_data (all versions)\\n- functional_analysis (all versions)\\n- taxonomic_analysis (1.0-3.0)\\n- taxonomic_analysis_ssu_rrna (>=4.0)\\n- taxonomic_analysis_lsu_rrna (>=4.0)\\n- non-coding_rnas (>=4.0)\\n- taxonomic_analysis_itsonedb (>= 5.0)\\n- taxonomic_analysis_unite (>= 5.0)\\n- taxonomic_analysis_motu  (>= 5.0)\\n- pathways_and_systems (>= 5.0)\\nDEFAULT: Downloads all result groups if not provided.\\n(default: None).\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_path = "${in_output_path}"
  }
}
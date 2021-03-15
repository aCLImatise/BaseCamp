class: CommandLineTool
id: mg_toolkit_bulk_download.cwl
inputs:
- id: in_accession
  doc: Provide the study/project accession of your interest, e.g. ERP001736, SRP000319.
    The study must be publicly available in MGnify.
  type: long?
  inputBinding:
    prefix: --accession
- id: in_output_path
  doc: "Location of the output directory, where the downloadable files are written\
    \ to.\nDEFAULT: CWD"
  type: File?
  inputBinding:
    prefix: --output_path
- id: in_pipeline
  doc: "Specify the version of the pipeline you are interested in.\nLets say your\
    \ study of interest has been analysed with\nmultiple version, but you are only\
    \ interested in a particular\nversion then used this option to filter down the\
    \ results by\nthe version you interested in.\nDEFAULT: Downloads all versions"
  type: string?
  inputBinding:
    prefix: --pipeline
- id: in_result_group
  doc: "Provide a single result group if needed.\nSupported result groups are:\n-\
    \ statistics\n- sequence_data (all versions)\n- functional_analysis (all versions)\n\
    - taxonomic_analysis (1.0-3.0)\n- taxonomic_analysis_ssu_rrna (>=4.0)\n- taxonomic_analysis_lsu_rrna\
    \ (>=4.0)\n- non-coding_rnas (>=4.0)\n- taxonomic_analysis_itsonedb (>= 5.0)\n\
    - taxonomic_analysis_unite (>= 5.0)\n- taxonomic_analysis_motu  (>= 5.0)\n- pathways_and_systems\
    \ (>= 5.0)\nDEFAULT: Downloads all result groups if not provided.\n(default: None).\n"
  type: string?
  inputBinding:
    prefix: --result_group
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_path
  doc: "Location of the output directory, where the downloadable files are written\
    \ to.\nDEFAULT: CWD"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_path)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mg-toolkit:0.9.1--py_0
cwlVersion: v1.1
baseCommand:
- mg-toolkit
- bulk_download

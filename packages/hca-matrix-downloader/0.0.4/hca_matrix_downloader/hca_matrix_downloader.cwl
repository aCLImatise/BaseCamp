class: CommandLineTool
id: hca_matrix_downloader.cwl
inputs:
- id: in_project
  doc: "The project's Project Title, Project short name or\nlink-derived ID, obtained\
    \ from the HCA DCP, wrapped in\nquotes."
  type: string?
  inputBinding:
    prefix: --project
- id: in_format
  doc: "Format to download matrix in: loom or mtx (Matrix\nMarket). Defaults to loom."
  type: string?
  inputBinding:
    prefix: --format
- id: in_out_prefix
  doc: "Output prefix to replace project uuid in filename of\ndownloaded matrix. Leave\
    \ as project uuid if not\nspecified."
  type: File?
  inputBinding:
    prefix: --outprefix
- id: in_species
  doc: "The species to use, when a project has more than one.\n"
  type: string?
  inputBinding:
    prefix: --species
- id: in_download
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_data
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_via
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_hca
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_dcp
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_ftp_dot
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_requires
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_files
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_are
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_downloaded
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: in_into
  doc: ''
  type: string
  inputBinding:
    position: 10
- id: in_current
  doc: ''
  type: string
  inputBinding:
    position: 11
- id: in_working
  doc: ''
  type: string
  inputBinding:
    position: 12
- id: in_directory_dot
  doc: ''
  type: Directory
  inputBinding:
    position: 13
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_prefix
  doc: "Output prefix to replace project uuid in filename of\ndownloaded matrix. Leave\
    \ as project uuid if not\nspecified."
  type: File?
  outputBinding:
    glob: $(inputs.in_out_prefix)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hca-matrix-downloader:0.0.4--py_0
cwlVersion: v1.1
baseCommand:
- hca-matrix-downloader

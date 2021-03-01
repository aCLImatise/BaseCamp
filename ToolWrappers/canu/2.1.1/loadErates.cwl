class: CommandLineTool
id: loadErates.cwl
inputs:
- id: in_path_overlap_store
  doc: path to the overlap store to create
  type: File?
  inputBinding:
    prefix: -O
- id: in_path_sequence_store
  doc: path to a sequence store
  type: File?
  inputBinding:
    prefix: -S
- id: in_list_evalue_files
  doc: a list of evalue files in 'fileList'
  type: File?
  inputBinding:
    prefix: -L
- id: in_evalue_file
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/canu:2.1.1--he1b5a44_1
cwlVersion: v1.1
baseCommand:
- loadErates

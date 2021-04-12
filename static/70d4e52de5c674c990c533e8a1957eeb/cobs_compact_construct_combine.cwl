class: CommandLineTool
id: cobs_compact_construct_combine.cwl
inputs:
- id: in_page_size
  doc: 'the page size of the compact the index, default: 8192'
  type: boolean?
  inputBinding:
    prefix: --page-size
- id: in_in_dir
  doc: path to the input directory
  type: string
  inputBinding:
    position: 0
- id: in_out_file
  doc: path to the output file
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_file
  doc: path to the output file
  type: File
  outputBinding:
    glob: $(inputs.in_out_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cobs:0.1.2--py39h56fc30b_0
cwlVersion: v1.1
baseCommand:
- cobs
- compact-construct-combine

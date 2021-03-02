class: CommandLineTool
id: slice_fasta.cwl
inputs:
- id: in_fast_a_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_sequence_name
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_start
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_end
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_strand
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/fsa:1.15.9--h8b12597_1
cwlVersion: v1.1
baseCommand:
- slice_fasta

class: CommandLineTool
id: downpore.cwl
inputs:
- id: in_overlap
  doc: map
  type: string
  inputBinding:
    position: 0
- id: in_trim
  doc: subseq
  type: string
  inputBinding:
    position: 1
- id: in_consensus
  doc: align
  type: string
  inputBinding:
    position: 2
- id: in_correct
  doc: kmers
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/downpore:0.3.4--h375a9b1_0
cwlVersion: v1.1
baseCommand:
- downpore

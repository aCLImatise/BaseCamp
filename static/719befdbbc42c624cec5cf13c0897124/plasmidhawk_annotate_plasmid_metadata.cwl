class: CommandLineTool
id: plasmidhawk_annotate_plasmid_metadata.cwl
inputs:
- id: in_o
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
- id: in_plasmid_hawk
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_annotate
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_frag_metadata
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_plasmid_metadata
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/plasmidhawk:1.0.2--0
cwlVersion: v1.1
baseCommand:
- plasmidhawk
- annotate
- plasmid-metadata

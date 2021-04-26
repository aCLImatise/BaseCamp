class: CommandLineTool
id: arrow_annotations_load_legacy_gff3.cwl
inputs:
- id: in_source
  doc: URL where the input dataset can be found.
  type: string?
  inputBinding:
    prefix: --source
- id: in_organism
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_gff_three
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/apollo:4.2.11--pyh5e36f6f_0
cwlVersion: v1.1
baseCommand:
- arrow
- annotations
- load_legacy_gff3

class: CommandLineTool
id: dendropy_format.cwl
inputs:
- id: in_from
  doc: Format of data source.
  type: string?
  inputBinding:
    prefix: --from
- id: in_data_type
  doc: Type of data
  type: string?
  inputBinding:
    prefix: --data-type
- id: in_to
  doc: "Format of data source.\n"
  type: string?
  inputBinding:
    prefix: --to
- id: in_source_file
  doc: Path to source data.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dendropy:4.5.2--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- dendropy-format

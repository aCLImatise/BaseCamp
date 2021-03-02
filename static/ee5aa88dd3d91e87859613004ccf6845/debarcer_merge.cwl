class: CommandLineTool
id: debarcer_merge.cwl
inputs:
- id: in_directory
  doc: Directory containing files to be merged
  type: Directory?
  inputBinding:
    prefix: --Directory
- id: in_datatype
  doc: "Type of files to be merged\n"
  type: string?
  inputBinding:
    prefix: --DataType
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/debarcer:2.1.3--py_0
cwlVersion: v1.1
baseCommand:
- debarcer
- merge

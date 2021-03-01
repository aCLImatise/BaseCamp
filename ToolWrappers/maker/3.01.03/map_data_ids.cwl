class: CommandLineTool
id: map_data_ids.cwl
inputs:
- id: in_col
  doc: "The column number (1 based) in the data file that\ncorresponds to old_name\
    \ in the mapping file."
  type: string
  inputBinding:
    position: 0
- id: in_delimit
  doc: The delimeter for the data file.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/maker:3.01.03--pl526hb8757ab_0
cwlVersion: v1.1
baseCommand:
- map_data_ids

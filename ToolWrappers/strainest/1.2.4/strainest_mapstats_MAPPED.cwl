class: CommandLineTool
id: strainest_mapstats_MAPPED.cwl
inputs:
- id: in_examples
  doc: strainest mapstats mapped.fna stats
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- strainest
- mapstats
- MAPPED

class: CommandLineTool
id: tepid_map.cwl
inputs:
- id: r
  doc: recursive (optional)
  type: boolean
  inputBinding:
    prefix: -r
- id: z
  doc: gzip fastq files (optional)
  type: boolean
  inputBinding:
    prefix: -z
outputs: []
cwlVersion: v1.1
baseCommand:
- tepid-map

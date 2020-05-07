class: CommandLineTool
id: phyluce_utilities_combine_reads.cwl
inputs:
- id: config
  doc: The configuration file for reads we are combining
  type: string
  inputBinding:
    prefix: --config
- id: output
  doc: The configuration file for reads we are combining
  type: string
  inputBinding:
    prefix: --output
- id: subfolder
  doc: A subdirectory, below the level of the group, containing the reads
  type: string
  inputBinding:
    prefix: --subfolder
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_utilities_combine_reads

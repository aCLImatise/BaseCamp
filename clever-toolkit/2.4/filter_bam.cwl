class: CommandLineTool
id: filter_bam.cwl
inputs:
- id: exclude_read_group
  doc: Name of readgroup to discard.
  type: string
  inputBinding:
    prefix: --exclude_readgroup
outputs: []
cwlVersion: v1.1
baseCommand:
- filter-bam

class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bxtools_convert.cwl
inputs:
- id: verbose
  doc: Set verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: keep_tags
  doc: 'Add chromosome tag (CR) and keep other tags. Default: delete all tags'
  type: boolean
  inputBinding:
    prefix: --keep-tags
- id: tag
  doc: 'Tag to flip for chromosome. Default: BX'
  type: boolean
  inputBinding:
    prefix: --tag
- id: bam_slash_sam_slash_cram
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bxtools
- convert

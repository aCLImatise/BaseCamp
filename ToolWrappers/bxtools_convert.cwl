class: CommandLineTool
id: bxtools_convert.cwl
inputs:
- id: in_verbose
  doc: Set verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_keep_tags
  doc: 'Add chromosome tag (CR) and keep other tags. Default: delete all tags'
  type: boolean
  inputBinding:
    prefix: --keep-tags
- id: in_tag
  doc: 'Tag to flip for chromosome. Default: BX'
  type: boolean
  inputBinding:
    prefix: --tag
- id: in_bam_slash_sam_slash_cram
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bxtools
- convert

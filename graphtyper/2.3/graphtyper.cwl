class: CommandLineTool
id: graphtyper.cwl
inputs:
- id: vcf_merge
  doc: Merge VCF files.
  type: string
  inputBinding:
    position: 0
- id: verbose
  doc: Set to output verbose logging.
  type: string
  inputBinding:
    prefix: --verbose
- id: v_verbose
  doc: Set to output very verbose logging.
  type: boolean
  inputBinding:
    prefix: --vverbose
outputs: []
cwlVersion: v1.1
baseCommand:
- graphtyper

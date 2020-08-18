class: CommandLineTool
id: ../../../vcfglbound.cwl
inputs:
- id: bound
  doc: Bound GLs to this limit.
  type: string
  inputBinding:
    prefix: --bound
- id: exclude_broken
  doc: If GLs are > 0, remove site.
  type: boolean
  inputBinding:
    prefix: --exclude-broken
- id: vcf_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- vcfglbound

class: CommandLineTool
id: vcfglbound.cwl
inputs:
- id: in_bound
  doc: Bound GLs to this limit.
  type: string
  inputBinding:
    prefix: --bound
- id: in_exclude_broken
  doc: If GLs are > 0, remove site.
  type: boolean
  inputBinding:
    prefix: --exclude-broken
- id: in_vcf_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- vcfglbound

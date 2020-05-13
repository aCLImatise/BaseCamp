class: CommandLineTool
id: rtg_help_pedfilter.cwl
inputs:
- id: file
  doc: the pedigree file to process, may be PED or VCF, use '-' to read from stdin
  type: File
  inputBinding:
    position: 0
- id: keep_family
  doc: keep only individuals with the specified family ID. May be specified 0 or more
    times, or as a comma separated list
  type: string
  inputBinding:
    prefix: --keep-family
- id: keep_ids
  doc: keep only individuals with the specified ID. May be specified 0 or more times,
    or as a comma separated list
  type: string
  inputBinding:
    prefix: --keep-ids
- id: keep_primary
  doc: keep only primary individuals (those with a PED individual line / VCF sample
    column)
  type: boolean
  inputBinding:
    prefix: --keep-primary
- id: remove_parentage
  doc: remove all parent-child relationship information
  type: boolean
  inputBinding:
    prefix: --remove-parentage
- id: vcf
  doc: output pedigree in the form of a VCF header
  type: boolean
  inputBinding:
    prefix: --vcf
outputs: []
cwlVersion: v1.1
baseCommand:
- rtg
- help
- pedfilter

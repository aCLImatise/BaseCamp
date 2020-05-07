class: CommandLineTool
id: vcf_to_deletionlist.cwl
inputs:
- id: m
  doc: Maximal length to be considered.
  type: long
  inputBinding:
    prefix: -m
- id: i
  doc: Include deletions marked as IMPRECISE.
  type: boolean
  inputBinding:
    prefix: -i
- id: g
  doc: Print list of genotypes as comma-separated list in last column.
  type: boolean
  inputBinding:
    prefix: -g
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf-to-deletionlist

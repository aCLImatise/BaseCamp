class: CommandLineTool
id: merge_variants.cwl
inputs:
- id: ref
  doc: samtools reference sequence (required)
  type: string
  inputBinding:
    prefix: --ref
- id: region
  doc: samtools reference region (optional)
  type: string
  inputBinding:
    prefix: --region
- id: exclude
  doc: name of chromosome to skip over (argument may be  specified multiple times).
    Exclusions will be ignored  if a region argument is provided
  type: string
  inputBinding:
    prefix: --exclude
- id: input
  doc: merge files (can be specified multiple times)
  type: string
  inputBinding:
    prefix: --input
- id: murdock
  doc: If true, don't stop because of any out-of-order  position conflicts. Any out
    of order positions are  ignored. In case of an overlap the first observation is
    used and subsequent repeats are ignored.
  type: boolean
  inputBinding:
    prefix: --murdock
- id: no
  doc: of overlapping indel alleles
  type: string
  inputBinding:
    prefix: '- No'
outputs: []
cwlVersion: v1.1
baseCommand:
- merge_variants

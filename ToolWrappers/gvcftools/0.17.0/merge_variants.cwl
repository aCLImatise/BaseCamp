class: CommandLineTool
id: merge_variants.cwl
inputs:
- id: in_ref
  doc: samtools reference sequence (required)
  type: string
  inputBinding:
    prefix: --ref
- id: in_region
  doc: samtools reference region (optional)
  type: string
  inputBinding:
    prefix: --region
- id: in_exclude
  doc: "name of chromosome to skip over (argument may be\nspecified multiple times).\
    \ Exclusions will be ignored\nif a region argument is provided"
  type: string
  inputBinding:
    prefix: --exclude
- id: in_input
  doc: merge files (can be specified multiple times)
  type: string
  inputBinding:
    prefix: --input
- id: in_murdock
  doc: "If true, don't stop because of any out-of-order\nposition conflicts. Any out\
    \ of order positions are\nignored. In case of an overlap the first observation\
    \ is\nused and subsequent repeats are ignored."
  type: boolean
  inputBinding:
    prefix: --murdock
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- merge_variants

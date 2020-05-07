class: CommandLineTool
id: break_blocks.cwl
inputs:
- id: region_file
  doc: A bed file specifying regions where call blocks should  be broken into individual
    positions (required)
  type: string
  inputBinding:
    prefix: --region-file
- id: ref
  doc: samtools reference sequence (required)
  type: string
  inputBinding:
    prefix: --ref
- id: exclude_off_target
  doc: "Don't output off-target vcf records. 'targeted' records include all those\
    \ intersecting the input region plus  any optionally included types specified\
    \ below (default: output all records)"
  type: boolean
  inputBinding:
    prefix: --exclude-off-target
- id: include_variants
  doc: Add all variant calls to the targeted record set (only  applies when exclude-off-target
    is used)
  type: boolean
  inputBinding:
    prefix: --include-variants
outputs: []
cwlVersion: v1.1
baseCommand:
- break_blocks

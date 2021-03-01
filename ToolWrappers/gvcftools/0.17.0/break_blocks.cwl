class: CommandLineTool
id: break_blocks.cwl
inputs:
- id: in_region_file
  doc: "A bed file specifying regions where call blocks should\nbe broken into individual\
    \ positions (required)"
  type: File?
  inputBinding:
    prefix: --region-file
- id: in_ref
  doc: samtools reference sequence (required)
  type: string?
  inputBinding:
    prefix: --ref
- id: in_exclude_off_target
  doc: "Don't output off-target vcf records. 'targeted' records\ninclude all those\
    \ intersecting the input region plus\nany optionally included types specified\
    \ below (default:\noutput all records)"
  type: boolean?
  inputBinding:
    prefix: --exclude-off-target
- id: in_include_variants
  doc: "Add all variant calls to the targeted record set (only\napplies when exclude-off-target\
    \ is used)"
  type: boolean?
  inputBinding:
    prefix: --include-variants
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- break_blocks

#!/usr/bin/env cwl-runner

baseCommand:
- break_blocks
class: CommandLineTool
cwlVersion: v1.0
id: break_blocks
inputs:
- doc: A bed file specifying regions where call blocks should  be broken into individual
    positions (required)
  id: region_file
  inputBinding:
    prefix: --region-file
  type: string
- doc: samtools reference sequence (required)
  id: ref
  inputBinding:
    prefix: --ref
  type: string
- doc: "Don't output off-target vcf records. 'targeted' records include all those\
    \ intersecting the input region plus  any optionally included types specified\
    \ below (default: output all records)"
  id: exclude_off_target
  inputBinding:
    prefix: --exclude-off-target
  type: boolean
- doc: Add all variant calls to the targeted record set (only  applies when exclude-off-target
    is used)
  id: include_variants
  inputBinding:
    prefix: --include-variants
  type: boolean

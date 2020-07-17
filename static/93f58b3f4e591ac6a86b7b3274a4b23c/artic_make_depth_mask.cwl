class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/artic_make_depth_mask.cwl
inputs:
- id: warn_rg_coverage
  doc: if set, a warning will be issued if the BAM file has pileup regions where coverage
    for each readgroup < min. depth BUT the combined coverage is > min. depth
  type: boolean
  inputBinding:
    prefix: --warn-rg-coverage
- id: ignore_deletions
  doc: if set, positional depth counts will ignore reads with reference deletions
    (i.e. evaluates positional depths on ref matches, not read span
  type: boolean
  inputBinding:
    prefix: --ignore-deletions
- id: store_rg_depths
  doc: if set, positional depth counts for each readgroup written to file (filename
    = <outfile>.<readgroup>.depths)
  type: boolean
  inputBinding:
    prefix: --store-rg-depths
- id: depth
  doc: ''
  type: string
  inputBinding:
    prefix: --depth
outputs: []
cwlVersion: v1.1
baseCommand:
- artic_make_depth_mask

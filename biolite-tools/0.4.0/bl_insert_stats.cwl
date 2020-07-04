class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bl_insert_stats.cwl
inputs:
- id: specify_sam_file
  doc: specify the SAM input file
  type: boolean
  inputBinding:
    prefix: -i
- id: specify_stats_file
  doc: specify the STATS output file
  type: boolean
  inputBinding:
    prefix: -o
- id: maxinsert_bin_allocated
  doc: MAX_INSERT bin allocated for the histogram
  type: boolean
  inputBinding:
    prefix: -m
- id: insert_stats
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bl-insert-stats

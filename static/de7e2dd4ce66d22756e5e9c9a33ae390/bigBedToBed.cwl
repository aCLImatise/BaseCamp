class: CommandLineTool
id: ../../../bigBedToBed.cwl
inputs:
- id: chrom
  doc: '- if set restrict output to given chromosome'
  type: string
  inputBinding:
    prefix: -chrom
- id: start
  doc: '- if set, restrict output to only that over start'
  type: string
  inputBinding:
    prefix: -start
- id: end
  doc: '- if set, restict output to only that under end'
  type: string
  inputBinding:
    prefix: -end
- id: max_items
  doc: '- if set, restrict output to first N items'
  type: string
  inputBinding:
    prefix: -maxItems
- id: udc_dir
  doc: =/dir/to/cache - place to put cache for remote bigBed/bigWigs
  type: boolean
  inputBinding:
    prefix: -udcDir
- id: input_dot_bb
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bigBedToBed

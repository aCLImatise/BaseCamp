class: CommandLineTool
id: bigBedToBed.cwl
inputs:
- id: input_bb
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_bed
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: chrom
  doc: restrict output to given chromosome
  type: string
  inputBinding:
    prefix: -chrom
- id: start
  doc: ', restrict output to only that over start'
  type: string
  inputBinding:
    prefix: -start
- id: end
  doc: ', restict output to only that under end'
  type: string
  inputBinding:
    prefix: -end
- id: max_items
  doc: ', restrict output to first N items'
  type: string
  inputBinding:
    prefix: -maxItems
- id: udc_dir
  doc: =/dir/to/cache - place to put cache for remote bigBed/bigWigs
  type: boolean
  inputBinding:
    prefix: -udcDir
outputs: []
cwlVersion: v1.1
baseCommand:
- bigBedToBed

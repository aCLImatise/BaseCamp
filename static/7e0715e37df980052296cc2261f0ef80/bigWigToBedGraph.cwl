class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bigWigToBedGraph.cwl
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
- id: udc_dir
  doc: =/dir/to/cache - place to put cache for remote bigBed/bigWigs
  type: boolean
  inputBinding:
    prefix: -udcDir
- id: in_dot_bigwig
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_dot_bed_graph
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bigWigToBedGraph

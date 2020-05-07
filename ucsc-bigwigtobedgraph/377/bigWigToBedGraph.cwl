class: CommandLineTool
id: bigWigToBedGraph.cwl
inputs:
- id: in_bigwig
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_bed_graph
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
- id: udc_dir
  doc: =/dir/to/cache - place to put cache for remote bigBed/bigWigs
  type: boolean
  inputBinding:
    prefix: -udcDir
outputs: []
cwlVersion: v1.1
baseCommand:
- bigWigToBedGraph

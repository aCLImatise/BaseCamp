class: CommandLineTool
id: bigWigToBedGraph.cwl
inputs:
- id: in_chrom
  doc: '- if set restrict output to given chromosome'
  type: long
  inputBinding:
    prefix: -chrom
- id: in_start
  doc: '- if set, restrict output to only that over start'
  type: string
  inputBinding:
    prefix: -start
- id: in_end
  doc: '- if set, restict output to only that under end'
  type: string
  inputBinding:
    prefix: -end
- id: in_udc_dir
  doc: =/dir/to/cache - place to put cache for remote bigBed/bigWigs
  type: boolean
  inputBinding:
    prefix: -udcDir
- id: in_in_dot_bigwig
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bigWigToBedGraph

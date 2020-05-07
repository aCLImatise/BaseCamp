class: CommandLineTool
id: pyatac_signal.cwl
inputs:
- id: bed
  doc: Positions around which to generate VPlot
  type: string
  inputBinding:
    prefix: --bed
- id: bg
  doc: Accepts bedgraph file that is tabix indexed
  type: string
  inputBinding:
    prefix: --bg
- id: sizes
  doc: File with chromosome names in 1st col, sizes in 2nd
  type: string
  inputBinding:
    prefix: --sizes
- id: out
  doc: basename for output
  type: string
  inputBinding:
    prefix: --out
- id: cores
  doc: Number of cores to use
  type: long
  inputBinding:
    prefix: --cores
- id: all
  doc: output csv file (gzipped) with signal track around all sites
  type: boolean
  inputBinding:
    prefix: --all
- id: no_agg
  doc: Don't make a plot of aggregate or write up of aggregate
  type: boolean
  inputBinding:
    prefix: --no_agg
- id: up
  doc: bases upstream of site to look
  type: long
  inputBinding:
    prefix: --up
- id: down
  doc: bases dowstream site to look
  type: long
  inputBinding:
    prefix: --down
- id: weight
  doc: Column with weight information. Signal for interval will be weighted by value
    in column
  type: long
  inputBinding:
    prefix: --weight
- id: strand
  doc: Column in which strand information is included if strand is to be used
  type: long
  inputBinding:
    prefix: --strand
- id: exp
  doc: take exponent of value
  type: boolean
  inputBinding:
    prefix: --exp
- id: positive
  doc: Only include positive signal
  type: boolean
  inputBinding:
    prefix: --positive
- id: scale
  doc: scale each individual track by total signal value
  type: boolean
  inputBinding:
    prefix: --scale
- id: norm
  doc: normalize aggregate track by number of intervals
  type: boolean
  inputBinding:
    prefix: --norm
outputs: []
cwlVersion: v1.1
baseCommand:
- pyatac
- signal

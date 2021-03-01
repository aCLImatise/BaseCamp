class: CommandLineTool
id: pyatac_signal.cwl
inputs:
- id: in_bed
  doc: Positions around which to generate VPlot
  type: File?
  inputBinding:
    prefix: --bed
- id: in_bg
  doc: Accepts bedgraph file that is tabix indexed
  type: File?
  inputBinding:
    prefix: --bg
- id: in_sizes
  doc: File with chromosome names in 1st col, sizes in 2nd
  type: File?
  inputBinding:
    prefix: --sizes
- id: in_out
  doc: basename for output
  type: string?
  inputBinding:
    prefix: --out
- id: in_cores
  doc: Number of cores to use
  type: long?
  inputBinding:
    prefix: --cores
- id: in_all
  doc: output csv file (gzipped) with signal track around all
  type: File?
  inputBinding:
    prefix: --all
- id: in_up
  doc: bases upstream of site to look
  type: long?
  inputBinding:
    prefix: --up
- id: in_down
  doc: bases dowstream site to look
  type: long?
  inputBinding:
    prefix: --down
- id: in_weight
  doc: "Column with weight information. Signal for interval\nwill be weighted by value\
    \ in column"
  type: long?
  inputBinding:
    prefix: --weight
- id: in_strand
  doc: "Column in which strand information is included if\nstrand is to be used"
  type: long?
  inputBinding:
    prefix: --strand
- id: in_exp
  doc: take exponent of value
  type: boolean?
  inputBinding:
    prefix: --exp
- id: in_positive
  doc: Only include positive signal
  type: boolean?
  inputBinding:
    prefix: --positive
- id: in_scale
  doc: scale each individual track by total signal value
  type: boolean?
  inputBinding:
    prefix: --scale
- id: in_norm
  doc: normalize aggregate track by number of intervals
  type: boolean?
  inputBinding:
    prefix: --norm
- id: in_sites
  doc: --no_agg              Don't make a plot of aggregate or write up of
  type: string
  inputBinding:
    position: 0
- id: in_aggregate
  doc: 'Bed options:'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_all
  doc: output csv file (gzipped) with signal track around all
  type: File?
  outputBinding:
    glob: $(inputs.in_all)
hints: []
cwlVersion: v1.1
baseCommand:
- pyatac
- signal

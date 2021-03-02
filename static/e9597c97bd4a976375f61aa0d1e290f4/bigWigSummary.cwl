class: CommandLineTool
id: bigWigSummary.cwl
inputs:
- id: in_type
  doc: "where X is one of:\nmean - average value in region (default)\nmin - minimum\
    \ value in region\nmax - maximum value in region\nstd - standard deviation in\
    \ region\ncoverage - % of region that is covered"
  type: long?
  inputBinding:
    prefix: -type
- id: in_udc_dir
  doc: =/dir/to/cache - place to put cache for remote bigBed/bigWigs
  type: boolean?
  inputBinding:
    prefix: -udcDir
- id: in_file_dot_bigwig
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_chrom
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_start
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_end
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bigWigSummary

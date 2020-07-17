class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/trfBig.cwl
inputs:
- id: bed
  doc: a bed file in current dir
  type: string
  inputBinding:
    prefix: -bed
- id: bed_at
  doc: '- create a bed file at explicit location'
  type: File
  inputBinding:
    prefix: -bedAt
- id: tempdir
  doc: Where to put temp files.
  type: string
  inputBinding:
    prefix: -tempDir
- id: trf
  doc: explicitly specifies trf executable name
  type: string
  inputBinding:
    prefix: -trf
- id: max_period
  doc: Maximum period size of repeat (default 2000)
  type: string
  inputBinding:
    prefix: -maxPeriod
- id: keep
  doc: don't delete tmp files
  type: boolean
  inputBinding:
    prefix: -keep
- id: when_used_here
  doc: 'when used here, for new trf v4.09 option: maximum TR length expected (in millions)
    (eg, -l=3 for 3 million), Human genome hg38 would need -l=6'
  type: string
  inputBinding:
    prefix: -l
- id: in_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: outfile
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- trfBig

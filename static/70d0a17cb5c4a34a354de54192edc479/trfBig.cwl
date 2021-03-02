class: CommandLineTool
id: trfBig.cwl
inputs:
- id: in_bed
  doc: a bed file in current dir
  type: File?
  inputBinding:
    prefix: -bed
- id: in_bed_at
  doc: '- create a bed file at explicit location'
  type: File?
  inputBinding:
    prefix: -bedAt
- id: in_tempdir
  doc: Where to put temp files.
  type: string?
  inputBinding:
    prefix: -tempDir
- id: in_trf
  doc: explicitly specifies trf executable name
  type: string?
  inputBinding:
    prefix: -trf
- id: in_max_period
  doc: Maximum period size of repeat (default 2000)
  type: long?
  inputBinding:
    prefix: -maxPeriod
- id: in_keep
  doc: don't delete tmp files
  type: boolean?
  inputBinding:
    prefix: -keep
- id: in_when_used_here
  doc: "when used here, for new trf v4.09 option:\nmaximum TR length expected (in\
    \ millions)\n(eg, -l=3 for 3 million), Human genome hg38 would need -l=6\n"
  type: long?
  inputBinding:
    prefix: -l
- id: in_in_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- trfBig

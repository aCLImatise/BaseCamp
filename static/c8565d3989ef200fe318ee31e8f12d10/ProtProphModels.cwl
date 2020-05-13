class: CommandLineTool
id: ProtProphModels.pl.cwl
inputs:
- id: specify
  doc: file to process.
  type: File
  inputBinding:
    prefix: -- Specify
- id: specify
  doc: prefix indicating decoys to be counted.
  type: string
  inputBinding:
    prefix: -- Specify
- id: specify
  doc: prefix indicating decoys to be excluded.
  type: string
  inputBinding:
    prefix: -- Specify
- id: specify
  doc: ratio. Will guess from P<0.002 hits if not specified.
  type: string
  inputBinding:
    prefix: -- Specify
- id: k
  doc: -- Don't delete intermediate files (only relevant when using -G option).
  type: boolean
  inputBinding:
    prefix: -k
- id: c
  doc: -- Use confidence not the probability.
  type: boolean
  inputBinding:
    prefix: -c
- id: g
  doc: -- Generate plots using Gnuplot, as opposed to inserting analysis data into
    source protXML file.
  type: boolean
  inputBinding:
    prefix: -G
outputs: []
cwlVersion: v1.1
baseCommand:
- ProtProphModels.pl

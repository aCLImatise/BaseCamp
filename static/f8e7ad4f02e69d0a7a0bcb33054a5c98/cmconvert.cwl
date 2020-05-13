class: CommandLineTool
id: cmconvert.cwl
inputs:
- id: o
  doc: ': save CM file to file <f>, not stdout'
  type: string
  inputBinding:
    prefix: -o
- id: ml_hmm
  doc: ': output maximum likelihood HMM for CM in HMMER3 format'
  type: boolean
  inputBinding:
    prefix: --mlhmm
- id: f_hmm
  doc: ': output filter HMM for CM in HMMER3 format'
  type: boolean
  inputBinding:
    prefix: --fhmm
outputs: []
cwlVersion: v1.1
baseCommand:
- cmconvert

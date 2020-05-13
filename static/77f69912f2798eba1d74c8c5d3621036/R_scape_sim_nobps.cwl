class: CommandLineTool
id: R_scape_sim_nobps.cwl
inputs:
- id: that
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: remove
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: not
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: annotated
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: ss
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: correlations
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: msa
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: v
  doc: ': be verbose'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_format
  doc: ': specify format'
  type: string
  inputBinding:
    prefix: --informat
- id: outdir
  doc: ': specify a directory for all output files'
  type: string
  inputBinding:
    prefix: --outdir
- id: o
  doc: ': send output to file <f>, not stdout'
  type: string
  inputBinding:
    prefix: -o
- id: one_msa
  doc: ': if file has more than one msa, analyze only the first one'
  type: boolean
  inputBinding:
    prefix: --onemsa
outputs: []
cwlVersion: v1.1
baseCommand:
- R-scape-sim-nobps

class: CommandLineTool
id: mimodd_header.cwl
inputs:
- id: ofile
  doc: 'redirect the output to the specified file (default: stdout)'
  type: string
  inputBinding:
    prefix: --ofile
- id: relaxed
  doc: do not enforce a sample name to be specified for every read group
  type: boolean
  inputBinding:
    prefix: --relaxed
- id: rg_id
  doc: one or more unique read group identifiers
  type: string[]
  inputBinding:
    prefix: --rg-id
- id: rg_sm
  doc: one sample name per read group identifier
  type: string[]
  inputBinding:
    prefix: --rg-sm
- id: rg_cn
  doc: one sequencing center name per read group
  type: string[]
  inputBinding:
    prefix: --rg-cn
- id: rg_ds
  doc: one description line per read group
  type: string[]
  inputBinding:
    prefix: --rg-ds
- id: rg_dt
  doc: date runs were produced (YYYY-MM-DD); one date per read group
  type: string[]
  inputBinding:
    prefix: --rg-dt
- id: rg_lb
  doc: library identifier for each read group
  type: string[]
  inputBinding:
    prefix: --rg-lb
- id: rg_pl
  doc: sequencing platform/technology used to produce each read group
  type: string[]
  inputBinding:
    prefix: --rg-pl
- id: rg_pi
  doc: predicted median insert size for the reads of each read group
  type: string[]
  inputBinding:
    prefix: --rg-pi
- id: rg_pu
  doc: platform unit, e.g., flowcell barcode or slide identifier, for each read group
  type: string[]
  inputBinding:
    prefix: --rg-pu
- id: co
  doc: '[COMMENT [COMMENT ...]] an arbitrary number of one-line comment strings'
  type: boolean
  inputBinding:
    prefix: --co
outputs: []
cwlVersion: v1.1
baseCommand:
- mimodd
- header

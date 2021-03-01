class: CommandLineTool
id: mimodd_header.cwl
inputs:
- id: in_ofile
  doc: "redirect the output to the specified file (default:\nstdout)"
  type: File?
  inputBinding:
    prefix: --ofile
- id: in_relaxed
  doc: "do not enforce a sample name to be specified for every\nread group"
  type: boolean?
  inputBinding:
    prefix: --relaxed
- id: in_rg_id
  doc: one or more unique read group identifiers
  type: string[]
  inputBinding:
    prefix: --rg-id
- id: in_rg_sm
  doc: one sample name per read group identifier
  type: string[]
  inputBinding:
    prefix: --rg-sm
- id: in_rg_cn
  doc: one sequencing center name per read group
  type: string[]
  inputBinding:
    prefix: --rg-cn
- id: in_rg_ds
  doc: one description line per read group
  type: string[]
  inputBinding:
    prefix: --rg-ds
- id: in_rg_dt
  doc: "date runs were produced (YYYY-MM-DD); one date per\nread group"
  type: string[]
  inputBinding:
    prefix: --rg-dt
- id: in_rg_lb
  doc: library identifier for each read group
  type: string[]
  inputBinding:
    prefix: --rg-lb
- id: in_rg_pl
  doc: "sequencing platform/technology used to produce each\nread group"
  type: string[]
  inputBinding:
    prefix: --rg-pl
- id: in_rg_pi
  doc: "predicted median insert size for the reads of each\nread group"
  type: string[]
  inputBinding:
    prefix: --rg-pi
- id: in_rg_pu
  doc: "platform unit, e.g., flowcell barcode or slide\nidentifier, for each read\
    \ group"
  type: string[]
  inputBinding:
    prefix: --rg-pu
- id: in_co
  doc: "[COMMENT [COMMENT ...]]\nan arbitrary number of one-line comment strings\n"
  type: boolean?
  inputBinding:
    prefix: --co
- id: in_header
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_ofile
  doc: "redirect the output to the specified file (default:\nstdout)"
  type: File?
  outputBinding:
    glob: $(inputs.in_ofile)
hints: []
cwlVersion: v1.1
baseCommand:
- mimodd
- header

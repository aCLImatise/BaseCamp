class: CommandLineTool
id: rsat_calc_taxfreq.cwl
inputs:
- id: in_calc_tax_freq
  doc: "\e[1mDESCRIPTION\e[0m"
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
- rsat
- calc-taxfreq

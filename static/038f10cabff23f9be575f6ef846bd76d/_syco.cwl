class: CommandLineTool
id: _syco.cwl
inputs:
- id: in_c_file
  doc: codon      Codon usage file
  type: boolean
  inputBinding:
    prefix: -cfile
- id: in_window
  doc: integer    [30] Averaging window (Any integer value)
  type: boolean
  inputBinding:
    prefix: -window
- id: in_uncommon
  doc: boolean    [N] Show common codon usage
  type: boolean
  inputBinding:
    prefix: -uncommon
- id: in_minimum
  doc: "float      [.15] Minimum value for a common codon\n(Number from 0.000 to 0.990)"
  type: boolean
  inputBinding:
    prefix: -minimum
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- _syco

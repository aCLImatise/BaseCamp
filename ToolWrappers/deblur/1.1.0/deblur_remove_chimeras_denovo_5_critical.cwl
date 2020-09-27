class: CommandLineTool
id: deblur_remove_chimeras_denovo_5_critical.cwl
inputs:
- id: in_de_blur
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_remove_chimeras_de_novo
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_seqs_fp
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_output_fp
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- deblur
- remove-chimeras-denovo
- 5-critical

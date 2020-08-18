class: CommandLineTool
id: ../../../gaas_prepare_matrice_by_window.pl.cwl
inputs:
- id: output
  doc: Output name of the directory that will contain results
  type: string
  inputBinding:
    prefix: --output
- id: p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: ad
  doc: ''
  type: Directory
  inputBinding:
    prefix: --ad
outputs: []
cwlVersion: v1.1
baseCommand:
- gaas_prepare_matrice_by_window.pl

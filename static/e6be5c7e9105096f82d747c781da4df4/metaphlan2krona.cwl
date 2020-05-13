class: CommandLineTool
id: metaphlan2krona.py.cwl
inputs:
- id: profile
  doc: The input file is the MetaPhlAn standard result file
  type: string
  inputBinding:
    prefix: --profile
- id: krona
  doc: the Krons output file name
  type: string
  inputBinding:
    prefix: --krona
outputs: []
cwlVersion: v1.1
baseCommand:
- metaphlan2krona.py

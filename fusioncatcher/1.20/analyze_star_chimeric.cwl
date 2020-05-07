class: CommandLineTool
id: analyze_star_chimeric.py.cwl
inputs:
- id: input
  doc: The input file in PSL format.
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: The output PSL file containing the contigs with the best alignment which must
    be unique.
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- analyze_star_chimeric.py

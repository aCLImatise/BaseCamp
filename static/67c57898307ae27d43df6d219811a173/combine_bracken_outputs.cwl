class: CommandLineTool
id: combine_bracken_outputs.py.cwl
inputs:
- id: files
  doc: Bracken output files to combine.
  type: File[]
  inputBinding:
    prefix: --files
- id: names
  doc: Names for each input file - to be used in column headers of output [separate
    names with commas]
  type: string
  inputBinding:
    prefix: --names
- id: output
  doc: Name of output file with combined Bracken results.
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- combine_bracken_outputs.py

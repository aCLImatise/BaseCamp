class: CommandLineTool
id: maf_covered_ranges.py.cwl
inputs:
- id: in_species_one
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- maf_covered_ranges.py

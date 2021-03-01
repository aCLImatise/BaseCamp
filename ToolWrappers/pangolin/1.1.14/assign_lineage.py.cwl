class: CommandLineTool
id: assign_lineage.py.cwl
inputs:
- id: in_format
  doc: "what format is the tree file. This is passed to\ndendropy. default is 'nexus'"
  type: string?
  inputBinding:
    prefix: --format
- id: in_collapse_to_poly_to_mies
  doc: "A optional flag to collapse branches with length <=\nthe input before running\
    \ the rule."
  type: long?
  inputBinding:
    prefix: --collapse_to_polytomies
- id: in_input
  doc: "The input tree file. Format can be specified with the\nformat flag."
  type: File?
  inputBinding:
    prefix: --input
- id: in__output_file
  doc: "*, --output output.*\nThe output file"
  type: File?
  inputBinding:
    prefix: -o
- id: in_index
  doc: "The index of the trait to reconstruct when the tip\nlabel is split by the\
    \ separator"
  type: string?
  inputBinding:
    prefix: --index
- id: in_separator
  doc: optional separator used to get trait
  type: string?
  inputBinding:
    prefix: --separator
- id: in_tax_on
  doc: "The tip label to get\n"
  type: string?
  inputBinding:
    prefix: --taxon
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__output_file
  doc: "*, --output output.*\nThe output file"
  type: File?
  outputBinding:
    glob: $(inputs.in__output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- assign_lineage.py

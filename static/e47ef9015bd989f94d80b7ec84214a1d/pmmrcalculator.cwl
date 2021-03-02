class: CommandLineTool
id: pmmrcalculator.cwl
inputs:
- id: in_input
  doc: "The desired input file prefix. Input files are assumed\nto be <INPUT PREFIX>.geno,\
    \ <INPUT PREFIX>.snp and\n<INPUT PREFIX>.ind ."
  type: File?
  inputBinding:
    prefix: --Input
- id: in_output
  doc: The desired output file name. Omit to print to stdout.
  type: File?
  inputBinding:
    prefix: --Output
- id: in_suffix
  doc: "The desired input file suffix. Input files are assumed\nto be <INPUT PREFIX>.geno<INPUT\
    \ SUFFIX>, <INPUT\nPREFIX>.snp<INPUT SUFFIX> and <INPUT PREFIX>.ind<INPUT\nSUFFIX>\
    \ ."
  type: File?
  inputBinding:
    prefix: --Suffix
- id: in_json
  doc: "Create additional json formatted output file named\n<OUTPUT FILE>.json . [Default:\n\
    'pmmrcalculator_output.json']\n"
  type: File?
  inputBinding:
    prefix: --json
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: The desired output file name. Omit to print to stdout.
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_json
  doc: "Create additional json formatted output file named\n<OUTPUT FILE>.json . [Default:\n\
    'pmmrcalculator_output.json']\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_json)
hints: []
cwlVersion: v1.1
baseCommand:
- pmmrcalculator

class: CommandLineTool
id: obgrep.cwl
inputs:
- id: in_invert_matching_print
  doc: Invert the matching, print non-matching molecules
  type: boolean
  inputBinding:
    prefix: -v
- id: in_print_number_matched
  doc: Print the number of matched molecules
  type: boolean
  inputBinding:
    prefix: -c
- id: in_specify_input_format
  doc: Specify the input and output format
  type: string
  inputBinding:
    prefix: -i
- id: in_full_match_print
  doc: "Full match, print matching-molecules when the number\nof heavy atoms is equal\
    \ to the number of PATTERN atoms"
  type: boolean
  inputBinding:
    prefix: -f
- id: in_only_print_name
  doc: Only print the name of the molecules
  type: boolean
  inputBinding:
    prefix: -n
- id: in_print_molecule_occurs
  doc: Print a molecule only if the PATTERN occurs NUM times inside the molecule
  type: long
  inputBinding:
    prefix: -t
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- obgrep

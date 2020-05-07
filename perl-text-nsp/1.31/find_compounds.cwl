class: CommandLineTool
id: find_compounds.pl.cwl
inputs:
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: source_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: compound_word_list
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: new_line
  doc: Find compound words in one line.
  type: boolean
  inputBinding:
    prefix: --newline
outputs: []
cwlVersion: v1.1
baseCommand:
- find-compounds.pl

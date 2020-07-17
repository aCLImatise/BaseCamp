class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/find_compounds.pl.cwl
inputs:
- id: new_line
  doc: Find compound words in one line.
  type: boolean
  inputBinding:
    prefix: --newline
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
outputs: []
cwlVersion: v1.1
baseCommand:
- find-compounds.pl

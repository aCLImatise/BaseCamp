class: CommandLineTool
id: find_compounds.pl.cwl
inputs:
- id: in_new_line
  doc: Find compound words in one line.
  type: boolean
  inputBinding:
    prefix: --newline
- id: in_output_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_source_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_compound_word_list
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- find-compounds.pl

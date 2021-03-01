class: CommandLineTool
id: rsat_variation_info.cwl
inputs:
- id: in_type
  doc: ',deletion'
  type: string?
  inputBinding:
    prefix: -type
- id: in_variation_info
  doc: "\e[1mVERSION\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_util
  doc: "\e[1mUSAGE\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_ignored_dot
  doc: The definition of the BED format is provided on the UCSC Genome Browser
  type: string
  inputBinding:
    position: 0
- id: in_matrices_dot
  doc: "\e[1mWISH LIST\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_get
  doc: variations specified either by their IDs or by a set of genomic
  type: string
  inputBinding:
    position: 0
- id: in_regions_dot
  doc: 'Supported formats:'
  type: string
  inputBinding:
    position: 1
- id: in_mdeletionm
  doc: "\e[33mdeletion\e[0m"
  type: long
  inputBinding:
    position: 0
- id: in_deletion
  doc: http://www.sequenceontology.org/browser/release_2.5/term/SO:0000159
  type: string
  inputBinding:
    position: 1
- id: in_insertion
  doc: http://www.sequenceontology.org/browser/release_2.5/term/SO:0000667
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rsat
- variation-info

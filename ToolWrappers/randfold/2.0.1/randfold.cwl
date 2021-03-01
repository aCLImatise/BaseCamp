class: CommandLineTool
id: randfold.cwl
inputs:
- id: in_mononucleotide_shuffling
  doc: mononucleotide shuffling
  type: string?
  inputBinding:
    prefix: -s
- id: in_shuffling
  doc: shuffling
  type: string?
  inputBinding:
    prefix: -d
- id: in_chain__shuffling
  doc: chain 1 shuffling
  type: long?
  inputBinding:
    prefix: -m
- id: in_method
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_file_name
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_number_of_randomization_s
  doc: ''
  type: long
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- randfold

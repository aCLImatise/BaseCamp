class: CommandLineTool
id: rsem_for_ebseq_find_DE.cwl
inputs:
- id: in_number_of_replicate_for_condition_two
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
- rsem-for-ebseq-find-DE

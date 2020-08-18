class: CommandLineTool
id: ../../../remove_callers_from_somaticseq_tsv.py.cwl
inputs:
- id: in_file
  doc: ''
  type: string
  inputBinding:
    prefix: -infile
- id: outfile
  doc: ''
  type: boolean
  inputBinding:
    prefix: -outfile
outputs: []
cwlVersion: v1.1
baseCommand:
- remove_callers_from_somaticseq_tsv.py

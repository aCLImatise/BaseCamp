class: CommandLineTool
id: ppanggolin_info.cwl
inputs:
- id: in_pan_genome
  doc: 'The pangenome .h5 file (default: None)'
  type: File?
  inputBinding:
    prefix: --pangenome
- id: in_parameters
  doc: "Shows the parameters used (or computed) for each step\nof the pangenome generation\
    \ (default: False)"
  type: boolean?
  inputBinding:
    prefix: --parameters
- id: in_content
  doc: "Shows detailled informations about the pangenome's\ncontent (default: False)"
  type: boolean?
  inputBinding:
    prefix: --content
- id: in_status
  doc: "Shows informations about the statuses of the different\nelements of the pangenome\
    \ (what has been computed, or\nnot) (default: False)\n"
  type: boolean?
  inputBinding:
    prefix: --status
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ppanggolin
- info

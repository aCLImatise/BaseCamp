class: CommandLineTool
id: add_gff_info_exp_syn.cwl
inputs:
- id: in_verbose
  doc: "-r, --reference FILENAME  reference sequence in fasta format  [required]\n\
    -s, --split               Split the sequence header of the reference at the\n\
    first space, to emulate BLAST behaviour\n--progress                Shows Progress\
    \ Bar\n--help                    Show this message and exit.\n"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- add-gff-info
- exp_syn

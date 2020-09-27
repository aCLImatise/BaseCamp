class: CommandLineTool
id: get_gff_info_sequence.cwl
inputs:
- id: in_verbose
  doc: "-r, --reverse             Reverse complement sequences on the - strand\n-w,\
    \ --no-wrap             Write the sequences on one line\n-s, --split         \
    \      Split the sequence header of the reference at the\nfirst space, to emulate\
    \ BLAST behaviour\n-f, --reference FILENAME  Fasta file containing the reference\
    \ sequences of\nthe GFF file\n--progress                Shows Progress Bar\n--help\
    \                    Show this message and exit.\n"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_gff_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_fast_a_file
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
- get-gff-info
- sequence

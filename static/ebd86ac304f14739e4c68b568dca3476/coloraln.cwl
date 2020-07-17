class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/coloraln.pl.cwl
inputs:
- id: read_file_extract
  doc: 'read file to extract the consensus structure (default: "alirna.ps")'
  type: File
  inputBinding:
    prefix: -s
- id: break_alignments_blocks
  doc: 'break alignments into blocks of at most width columns, (default: 120)'
  type: string
  inputBinding:
    prefix: -c
- id: suppress_conversion_of
  doc: 'suppress conversion of "T" to "U", i.e. do not convert DNA to RNA, (default:
    convert to "U")'
  type: boolean
  inputBinding:
    prefix: -t
- id: add_alignment_showing
  doc: add a "ruler" below the alignment showing sequence positions
  type: boolean
  inputBinding:
    prefix: -r
- id: write_sequence_position
  doc: write sequence position at the end of each sequence line
  type: boolean
  inputBinding:
    prefix: -n
- id: filed_otal_n
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- coloraln.pl

class: CommandLineTool
id: ../../../sfetch.cwl
inputs:
- id: name_accession_number
  doc: ': name is an accession number, not a key'
  type: boolean
  inputBinding:
    prefix: -a
- id: get_sequence_seqfile
  doc: ': get sequence from <seqfile>'
  type: string
  inputBinding:
    prefix: -d
- id: instead_get_sequence
  doc: ': instead, get sequence from main database'
  type: string
  inputBinding:
    prefix: -D
- id: rename_fragment_newname
  doc: ': rename the fragment <newname>'
  type: string
  inputBinding:
    prefix: -r
- id: _from_residue_n
  doc: ': from which residue (1..N)'
  type: string
  inputBinding:
    prefix: -f
- id: _to_residue_n
  doc: ': to which residue (1..N)'
  type: string
  inputBinding:
    prefix: -t
- id: direct_output_outfile
  doc: ': direct output to <outfile>'
  type: string
  inputBinding:
    prefix: -o
- id: use_output_format
  doc: ': use output format of <format>; see below for list. Default is original format
    of database.'
  type: string
  inputBinding:
    prefix: -F
- id: in_format
  doc: ': specify input sequence file format <s>'
  type: string
  inputBinding:
    prefix: --informat
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: seqname
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- sfetch

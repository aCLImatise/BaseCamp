class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/prettyalign.cwl
inputs:
- id: output_fastalike_format
  doc: Output in a FASTA-like format (off).
  type: boolean
  inputBinding:
    prefix: -f
- id: ig_format_turn
  doc: IG format (off), turn off column index.
  type: boolean
  inputBinding:
    prefix: -I
- id: toggle_output_column
  doc: Toggle output column indices (on).
  type: boolean
  inputBinding:
    prefix: -c
- id: toggle_sequence_index
  doc: Toggle sequence index (number) on each line (off).
  type: boolean
  inputBinding:
    prefix: -n
- id: toggle_sequence_id
  doc: Toggle sequence ID to each line (on).
  type: boolean
  inputBinding:
    prefix: -i
- id: maxinserts_max_number
  doc: (max-inserts)  Max number of insertions printed (2000000). -m0 Do not print
    insertions. -m-4 Print insert lengths with 4 digits.
  type: boolean
  inputBinding:
    prefix: -m
- id: linelength_characters_line
  doc: (linelength)   Characters per line (70).
  type: boolean
  inputBinding:
    prefix: -l
- id: space_char_char
  doc: (space char)   Char to show inserts (`.').
  type: boolean
  inputBinding:
    prefix: -s
- id: max_length_maximum
  doc: (max length)   Maximum length of input lines (30000).
  type: boolean
  inputBinding:
    prefix: -L
- id: output_blaststyle_format
  doc: Output in a BLAST-style format (off).
  type: boolean
  inputBinding:
    prefix: -b
- id: sequence_i_d
  doc: (sequence id)  Reference sequence for -b switch (first sequence)
  type: boolean
  inputBinding:
    prefix: -R
- id: nn_how_number
  doc: (n1,n2,...,nN) How to number the first residue in each sequence when using
    BLAST-style output (1,1,1,...,1)
  type: boolean
  inputBinding:
    prefix: -N
- id: filename
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- prettyalign

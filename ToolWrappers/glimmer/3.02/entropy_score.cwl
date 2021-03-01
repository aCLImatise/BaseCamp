class: CommandLineTool
id: entropy_score.cwl
inputs:
- id: in_dir
  doc: "Use the 4th column of each input line to specify the direction\nof the sequence.\
    \  Positive is forward, negative is reverse\nThe input sequence is assumed to\
    \ be circular"
  type: boolean?
  inputBinding:
    prefix: --dir
- id: in_entropy
  doc: "Read entropy profiles from <filename>.  Format is one header\nline, then 20\
    \ lines of 3 columns each.  Columns are amino acid,\npositive entropy, negative\
    \ entropy.  Rows must be in order\nby amino acid code letter"
  type: File?
  inputBinding:
    prefix: --entropy
- id: in_min_len
  doc: Don't output any sequence shorter than <n> characters
  type: string?
  inputBinding:
    prefix: --minlen
- id: in_no_start
  doc: Omit the first 3 characters of each specified string
  type: boolean?
  inputBinding:
    prefix: --nostart
- id: in_no_stop
  doc: Omit the last 3 characters of each specified string
  type: boolean?
  inputBinding:
    prefix: --nostop
- id: in_nowrap
  doc: "Use the actual input coordinates without any wraparound\nthat would be needed\
    \ by a circular genome.  Without this\noption, the output sequence is the shorter\
    \ of the two ways\naround the circle.  Use the -d option to specify direction\n\
    explicitly.\n"
  type: boolean?
  inputBinding:
    prefix: --nowrap
- id: in_sequence_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_coords
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- entropy-score

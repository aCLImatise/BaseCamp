class: CommandLineTool
id: ../../../extract.cwl
inputs:
- id: in_two
  doc: ''
  type: boolean
  inputBinding:
    prefix: '-2'
- id: in_two_fields
  doc: Output each sequence as 2 fields (tag and sequence) on a single line
  type: boolean
  inputBinding:
    prefix: --2_fields
- id: in_d
  doc: ''
  type: boolean
  inputBinding:
    prefix: -d
- id: in_dir
  doc: "Use the 4th column of each input line to specify the direction\nof the sequence.\
    \  Positive is forward, negative is reverse\nThe input sequence is assumed to\
    \ be circular"
  type: boolean
  inputBinding:
    prefix: --dir
- id: in_help
  doc: Print this message
  type: boolean
  inputBinding:
    prefix: --help
- id: in_l
  doc: ''
  type: string
  inputBinding:
    prefix: -l
- id: in_min_len
  doc: Don't output any sequence shorter than <n> characters
  type: string
  inputBinding:
    prefix: --minlen
- id: in_s
  doc: ''
  type: boolean
  inputBinding:
    prefix: -s
- id: in_no_start
  doc: Omit the first 3 characters of each output string
  type: boolean
  inputBinding:
    prefix: --nostart
- id: in_t
  doc: ''
  type: boolean
  inputBinding:
    prefix: -t
- id: in_no_stop
  doc: Omit the last 3 characters of each output string
  type: boolean
  inputBinding:
    prefix: --nostop
- id: in_w
  doc: ''
  type: boolean
  inputBinding:
    prefix: -w
- id: in_nowrap
  doc: "Use the actual input coordinates without any wraparound\nthat would be needed\
    \ by a circular genome.  Without this\noption, the output sequence is the shorter\
    \ of the two ways\naround the circle.  Use the -d option to specify direction\n\
    explicitly.\n"
  type: boolean
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
cwlVersion: v1.1
baseCommand:
- extract

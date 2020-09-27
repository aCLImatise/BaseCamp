class: CommandLineTool
id: start_codon_distrib.cwl
inputs:
- id: in__diruse_column
  doc: "--dir\nUse the 4th column of each input line to specify the direction\nof\
    \ the sequence.  Positive is forward, negative is reverse\nThe input sequence\
    \ is assumed to be circular\n-h\nPrint this message\n-w\n--nowrap\nUse the actual\
    \ input coordinates without any wraparound\nthat would be needed by a circular\
    \ genome.  Without this\noption, the output sequence is the shorter of the two\
    \ ways\naround the circle.  Use the -d option to specify direction\nexplicitly.\n\
    -3\n--3comma\noutput only a comma separated list (no spaces) of atg, gtg, ttg"
  type: boolean
  inputBinding:
    prefix: -d
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
- start-codon-distrib

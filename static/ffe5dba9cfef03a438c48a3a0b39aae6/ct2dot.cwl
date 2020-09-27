class: CommandLineTool
id: ct2dot.cwl
inputs:
- id: in_quiet
  doc: "Suppress unnecessary output. This option is implied when the output file is\n\
    '-' (STDOUT)."
  type: File
  inputBinding:
    prefix: --quiet
- id: in_format
  doc: "A number or name that indicates how subsequent sub-structures are formatted\n\
    (relevant only when more than one structure is being written).\nValid values are:\n\
    (1) simple -- Susbequent structures (after the first one) are written with\na\
    \ Structure-Line  '(((....)))' only -- (no title or sequence)\n(2) side   -- A\
    \ structure label is appended to the right side of each\nStructure-Line e.g. '(((....)))\
    \  ENERGY= -3.6  E.coli'.\n(3) multi  -- Susbequent structures are each written\
    \ with a Title-Line\n'>TITLE' followed by a Structure-Line.\n(4) full   -- All\
    \ structures written with a full header, including a\n'>TITLE' line followed by\
    \ a Sequence-Line and then a Structure-Line.\nThe default is 'multi'.\n"
  type: boolean
  inputBinding:
    prefix: --format
- id: in_ct_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_structure_number
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_bracket_file
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_quiet
  doc: "Suppress unnecessary output. This option is implied when the output file is\n\
    '-' (STDOUT)."
  type: File
  outputBinding:
    glob: $(inputs.in_quiet)
cwlVersion: v1.1
baseCommand:
- ct2dot

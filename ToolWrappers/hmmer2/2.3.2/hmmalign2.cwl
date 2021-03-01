class: CommandLineTool
id: hmmalign2.cwl
inputs:
- id: in_only_print_symbols
  doc: ': only print symbols aligned to match states'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_save_alignment_file
  doc: ': save alignment in file <f>'
  type: File?
  inputBinding:
    prefix: -o
- id: in_quiet_suppress_verbose
  doc: ': quiet - suppress verbose banner'
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_in_format
  doc: ': sequence file is in format <s>'
  type: File?
  inputBinding:
    prefix: --informat
- id: in_map_ali
  doc: ': include alignment in file <f> using map in HMM'
  type: File?
  inputBinding:
    prefix: --mapali
- id: in_one_line
  doc: ': output Stockholm fmt with 1 line/seq, not interleaved'
  type: boolean?
  inputBinding:
    prefix: --oneline
- id: in_out_format
  doc: ": output alignment in format <s> [default: Stockholm]\nformats include: MSF,\
    \ Clustal, Phylip, SELEX"
  type: string?
  inputBinding:
    prefix: --outformat
- id: in_with_ali
  doc: ': include alignment to (fixed) alignment in file <f>'
  type: File?
  inputBinding:
    prefix: --withali
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -options
- id: in_hmm_align
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_hmm_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_sequence_file
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hmmalign2

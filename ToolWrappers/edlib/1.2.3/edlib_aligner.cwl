class: CommandLineTool
id: edlib_aligner.cwl
inputs:
- id: in_specified_there_be
  doc: If specified, there will be no score or alignment output (silent mode).
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_nwshw_alignment_mode
  doc: '|NW|SHW  Alignment mode that will be used. [default: NW]'
  type: string?
  inputBinding:
    prefix: -m
- id: in_score_calculated_only
  doc: 'Score will be calculated only for N best sequences (best = with smallest score).
    If N = 0 then all sequences will be calculated. Specifying small N can make total
    calculation much faster. [default: 0]'
  type: long?
  inputBinding:
    prefix: -n
- id: in_sequences_score_k
  doc: 'Sequences with score > K will be discarded. Smaller k, faster calculation.
    If -1, no sequences will be discarded. [default: -1]'
  type: long?
  inputBinding:
    prefix: -k
- id: in_specified_alignment_path
  doc: If specified, alignment path will be found and printed. This may significantly
    slow down the calculation.
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_specified_start_locations
  doc: If specified, start locations will be found and printed. Each start location
    corresponds to one end location. This may somewhat slow down the calculation,
    but is still faster then finding alignment path and does not consume any extra
    memory.
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_cigstdcigext_format_used
  doc: '|CIG_STD|CIG_EXT  Format that will be used to print alignment path, can be
    used only with -p. NICE will give visually attractive format, CIG_STD will  give
    standard cigar format and CIG_EXT will give extended cigar format. [default: NICE]'
  type: File?
  inputBinding:
    prefix: -f
- id: in_options_dot_dot_dot
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_queries_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_target_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- edlib-aligner

class: CommandLineTool
id: ../../../edlib_aligner.cwl
inputs:
- id: specified_there_will
  doc: If specified, there will be no score or alignment output (silent mode).
  type: boolean
  inputBinding:
    prefix: -s
- id: nwshw_alignment_mode
  doc: '|NW|SHW  Alignment mode that will be used. [default: NW]'
  type: string
  inputBinding:
    prefix: -m
- id: score_will_calculated
  doc: 'Score will be calculated only for N best sequences (best = with smallest score).
    If N = 0 then all sequences will be calculated. Specifying small N can make total
    calculation much faster. [default: 0]'
  type: string
  inputBinding:
    prefix: -n
- id: sequences_score_k
  doc: 'Sequences with score > K will be discarded. Smaller k, faster calculation.
    If -1, no sequences will be discarded. [default: -1]'
  type: string
  inputBinding:
    prefix: -k
- id: specified_alignment_path
  doc: If specified, alignment path will be found and printed. This may significantly
    slow down the calculation.
  type: boolean
  inputBinding:
    prefix: -p
- id: specified_start_locations
  doc: If specified, start locations will be found and printed. Each start location
    corresponds to one end location. This may somewhat slow down the calculation,
    but is still faster then finding alignment path and does not consume any extra
    memory.
  type: boolean
  inputBinding:
    prefix: -l
- id: cigstdcigext_format_used
  doc: '|CIG_STD|CIG_EXT  Format that will be used to print alignment path, can be
    used only with -p. NICE will give visually attractive format, CIG_STD will  give
    standard cigar format and CIG_EXT will give extended cigar format. [default: NICE]'
  type: string
  inputBinding:
    prefix: -f
- id: options_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: queries_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: target_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- edlib-aligner

class: CommandLineTool
id: sqt_align.cwl
inputs:
- id: in_semi_global
  doc: "Run a semi-global alignment (for detecting overlaps).\nDefault: global alignment."
  type: boolean?
  inputBinding:
    prefix: --semiglobal
- id: in_max_error_rate
  doc: "Switch to cutadapt algorithm (also enables\n--semiglobal). No alignment will\
    \ be printed."
  type: long?
  inputBinding:
    prefix: --max-error-rate
- id: in_reverse_complement
  doc: "Run the alignment also with the reverse-complement of\nthe second sequence"
  type: boolean?
  inputBinding:
    prefix: --reverse-complement
- id: in_merge
  doc: Output a merged sequence (also enables --semiglobal)
  type: boolean?
  inputBinding:
    prefix: --merge
- id: in_sequence_one
  doc: "Sequence or path to FASTA file. If FASTA, only the\nfirst sequence is used."
  type: long
  inputBinding:
    position: 0
- id: in_sequence_two
  doc: "Sequence or path to FASTA file. If FASTA, only the\nfirst sequence is used."
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sqt
- align

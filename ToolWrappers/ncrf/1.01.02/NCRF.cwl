class: CommandLineTool
id: NCRF.cwl
inputs:
- id: in_min_m_ratio
  doc: "discard alignments with a low frequency of matches;\nratio can be between\
    \ 0 and 1 (e.g. \"0.85\"), or can be\nexpressed as a percentage (e.g. \"85%\")"
  type: double
  inputBinding:
    prefix: --minmratio
- id: in_max_noise
  doc: (same as --minmratio but with 1-ratio)
  type: long
  inputBinding:
    prefix: --maxnoise
- id: in_minlength
  doc: "discard alignments that don't have long enough repeat\n(default is 500)"
  type: long
  inputBinding:
    prefix: --minlength
- id: in_min_score
  doc: "discard alignments that don't score high enough\n(default is zero)"
  type: string
  inputBinding:
    prefix: --minscore
- id: in_stats
  doc: show match/mismatch/insert/delete counts
  type: string
  inputBinding:
    prefix: --stats
- id: in_positional_events
  doc: "show match/mismatch/insert/delete counts by motif\nposition (independent of\
    \ --stats=events); this may be\nuseful for detecting error non-uniformity, to\
    \ separate\nperfect repeats from imperfect"
  type: boolean
  inputBinding:
    prefix: --positionalevents
- id: in_cat
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_fast_a
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
- NCRF

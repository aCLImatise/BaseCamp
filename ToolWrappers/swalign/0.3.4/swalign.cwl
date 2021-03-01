class: CommandLineTool
id: swalign.cwl
inputs:
- id: in_match_score_default
  doc: 'Match score (default: 2)'
  type: long?
  inputBinding:
    prefix: -m
- id: in_mm
  doc: 'Mismatch penalty (default: 1)'
  type: long?
  inputBinding:
    prefix: -mm
- id: in_gap
  doc: 'Gap penalty (default: 1)'
  type: long?
  inputBinding:
    prefix: -gap
- id: in_gap_ext
  doc: 'Gap extension penalty (default: 1)'
  type: long?
  inputBinding:
    prefix: -gapext
- id: in_gap_decay
  doc: 'Decay the gap extension penalty (default: 0.0)'
  type: double?
  inputBinding:
    prefix: -gapdecay
- id: in_wrap
  doc: Wrap alignments when they are longer than N bases
  type: string?
  inputBinding:
    prefix: -wrap
- id: in_global
  doc: Perform a global alignment (experimental)
  type: boolean?
  inputBinding:
    prefix: -global
- id: in_query
  doc: Align the full query sequence (mix of local/global)
  type: boolean?
  inputBinding:
    prefix: -query
- id: in_summary
  doc: Write a summary files of match locations (tab-delimited)
  type: string?
  inputBinding:
    prefix: -summary
- id: in_use_region
  doc: Use regions for coordinates if included in FASTA ref
  type: boolean?
  inputBinding:
    prefix: -useregion
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- swalign

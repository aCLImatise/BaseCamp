class: CommandLineTool
id: fc_ovlp_filter_with_phase.py.cwl
inputs:
- id: in_n_core
  doc: "number of processes used for generating consensus\n(default: 4)"
  type: long?
  inputBinding:
    prefix: --n-core
- id: in_fof_n
  doc: "file contains the path of all LAS file to be processed\nin parallel (default:\
    \ None)"
  type: File?
  inputBinding:
    prefix: --fofn
- id: in_db
  doc: 'read db file path (default: None)'
  type: File?
  inputBinding:
    prefix: --db
- id: in_max_diff
  doc: "max difference of 5' and 3' coverage (default: None)"
  type: long?
  inputBinding:
    prefix: --max-diff
- id: in_max_cov
  doc: "max coverage of 5' or 3' coverage (default: None)"
  type: long?
  inputBinding:
    prefix: --max-cov
- id: in_min_cov
  doc: "min coverage of 5' or 3' coverage (default: None)"
  type: long?
  inputBinding:
    prefix: --min-cov
- id: in_min_len
  doc: 'min length of the reads (default: 2500)'
  type: long?
  inputBinding:
    prefix: --min-len
- id: in_best_n
  doc: "output at least best n overlaps on 5' or 3' ends if\npossible (default: 10)"
  type: long?
  inputBinding:
    prefix: --bestn
- id: in_rid_phase_map
  doc: "the file that encode the relationship of the read id\nto phase blocks (default:\
    \ None)"
  type: File?
  inputBinding:
    prefix: --rid-phase-map
- id: in_strictness
  doc: "If >0, keep *only* the edges which have both nodes of\nthe same phase. Unphased\
    \ edges are considered\ndangereous here and removed. (default: 0)\n"
  type: long?
  inputBinding:
    prefix: --strictness
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fc_ovlp_filter_with_phase.py

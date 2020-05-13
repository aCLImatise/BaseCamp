class: CommandLineTool
id: fc_ovlp_filter_with_phase.py.cwl
inputs:
- id: n_core
  doc: 'number of processes used for generating consensus (default: 4)'
  type: string
  inputBinding:
    prefix: --n-core
- id: fof_n
  doc: 'file contains the path of all LAS file to be processed in parallel (default:
    None)'
  type: string
  inputBinding:
    prefix: --fofn
- id: db
  doc: 'read db file path (default: None)'
  type: string
  inputBinding:
    prefix: --db
- id: max_diff
  doc: "max difference of 5' and 3' coverage (default: None)"
  type: long
  inputBinding:
    prefix: --max-diff
- id: max_cov
  doc: "max coverage of 5' or 3' coverage (default: None)"
  type: long
  inputBinding:
    prefix: --max-cov
- id: min_cov
  doc: "min coverage of 5' or 3' coverage (default: None)"
  type: long
  inputBinding:
    prefix: --min-cov
- id: min_len
  doc: 'min length of the reads (default: 2500)'
  type: long
  inputBinding:
    prefix: --min-len
- id: best_n
  doc: "output at least best n overlaps on 5' or 3' ends if possible (default: 10)"
  type: string
  inputBinding:
    prefix: --bestn
- id: rid_phase_map
  doc: 'the file that encode the relationship of the read id to phase blocks (default:
    None)'
  type: string
  inputBinding:
    prefix: --rid-phase-map
- id: strictness
  doc: 'If >0, keep *only* the edges which have both nodes of the same phase. Unphased
    edges are considered dangereous here and removed. (default: 0)'
  type: string
  inputBinding:
    prefix: --strictness
outputs: []
cwlVersion: v1.1
baseCommand:
- fc_ovlp_filter_with_phase.py

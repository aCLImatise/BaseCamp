class: CommandLineTool
id: sparse.cwl
inputs:
- id: input_1
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_2
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: galaxy_xml
  doc: Print galaxy xml wrapper.
  type: boolean
  inputBinding:
    prefix: --galaxy-xml
- id: verbose
  doc: Be verbose. Prints input parameters, sequences and size information.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: quiet
  doc: Be quiet.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: stacking
  doc: Use stacking terms (requires stack-probs by RNAfold -p2)
  type: boolean
  inputBinding:
    prefix: --stacking
- id: new_stacking
  doc: Use new stacking terms (requires stack-probs by RNAfold -p2)
  type: boolean
  inputBinding:
    prefix: --new-stacking
- id: extended_pf
  doc: Use extended precision for the computation of sequence envelopes. This enables
    handling significantly larger instances. [default]
  type: boolean
  inputBinding:
    prefix: --extended-pf
- id: quad_pf
  doc: Use quad precision for partition function values. Even more precision than
    extended pf, but usually much slower (overrides extended-pf).
  type: boolean
  inputBinding:
    prefix: --quad-pf
- id: local_output
  doc: Output only local sub-alignment (to std out).
  type: boolean
  inputBinding:
    prefix: --local-output
- id: local_file_output
  doc: Write only local sub-alignment to output files.
  type: boolean
  inputBinding:
    prefix: --local-file-output
- id: pos_output
  doc: Output only local sub-alignment positions.
  type: boolean
  inputBinding:
    prefix: --pos-output
- id: write_structure
  doc: Write guidance structure in output.
  type: boolean
  inputBinding:
    prefix: --write-structure
- id: special_gap_symbols
  doc: Special distinct gap symbols for loop gaps or gaps caused by sparsification
  type: boolean
  inputBinding:
    prefix: --special-gap-symbols
- id: stopwatch
  doc: Print run time informations.
  type: boolean
  inputBinding:
    prefix: --stopwatch
- id: write_match_probs
  doc: Write match probs to file (don't align!).
  type: File
  inputBinding:
    prefix: --write-match-probs
- id: read_match_probs
  doc: Read match probabilities from file.
  type: File
  inputBinding:
    prefix: --read-match-probs
- id: write_arc_match_scores
  doc: Write arcmatch scores (don't align!)
  type: File
  inputBinding:
    prefix: --write-arcmatch-scores
- id: read_arc_match_scores
  doc: Read arcmatch scores.
  type: File
  inputBinding:
    prefix: --read-arcmatch-scores
- id: read_arc_match_probs
  doc: Read arcmatch probabilities (weighted by factor mea_beta/100)
  type: File
  inputBinding:
    prefix: --read-arcmatch-probs
- id: relaxed_anchors
  doc: Use relaxed semantics of anchor constraints [default=strict semantics].
  type: boolean
  inputBinding:
    prefix: --relaxed-anchors
outputs: []
cwlVersion: v1.1
baseCommand:
- sparse

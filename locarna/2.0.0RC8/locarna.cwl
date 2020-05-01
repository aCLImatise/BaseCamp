#!/usr/bin/env cwl-runner

baseCommand:
- locarna
class: CommandLineTool
cwlVersion: v1.0
id: locarna
inputs:
- doc: ''
  id: input_1
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: input_2
  inputBinding:
    position: 1
  type: string
- doc: Print galaxy xml wrapper.
  id: galaxy_xml
  inputBinding:
    prefix: --galaxy-xml
  type: boolean
- doc: Be verbose. Prints input parameters, sequences and size information.
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Be quiet.
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: Use stacking terms (requires stack-probs by RNAfold -p2)
  id: stacking
  inputBinding:
    prefix: --stacking
  type: boolean
- doc: Use new stacking terms (requires stack-probs by RNAfold -p2)
  id: new_stacking
  inputBinding:
    prefix: --new-stacking
  type: boolean
- doc: Use extended precision for the computation of sequence envelopes. This enables
    handling significantly larger instances. [default]
  id: extended_pf
  inputBinding:
    prefix: --extended-pf
  type: boolean
- doc: Use quad precision for partition function values. Even more precision than
    extended pf, but usually much slower (overrides extended-pf).
  id: quad_pf
  inputBinding:
    prefix: --quad-pf
  type: boolean
- doc: Output only local sub-alignment (to std out).
  id: local_output
  inputBinding:
    prefix: --local-output
  type: boolean
- doc: Write only local sub-alignment to output files.
  id: local_file_output
  inputBinding:
    prefix: --local-file-output
  type: boolean
- doc: Output only local sub-alignment positions.
  id: pos_output
  inputBinding:
    prefix: --pos-output
  type: boolean
- doc: Write guidance structure in output.
  id: write_structure
  inputBinding:
    prefix: --write-structure
  type: boolean
- doc: Output components of the score (experimental).
  id: score_components
  inputBinding:
    prefix: --score-components
  type: boolean
- doc: Print run time informations.
  id: stopwatch
  inputBinding:
    prefix: --stopwatch
  type: boolean
- doc: Write match probs to file (don't align!).
  id: write_match_probs
  inputBinding:
    prefix: --write-match-probs
  type: File
- doc: Write trace probs to file (don't align!).
  id: write_trace_probs
  inputBinding:
    prefix: --write-trace-probs
  type: File
- doc: Read match probabilities from file.
  id: read_match_probs
  inputBinding:
    prefix: --read-match-probs
  type: File
- doc: Write arcmatch scores (don't align!)
  id: write_arc_match_scores
  inputBinding:
    prefix: --write-arcmatch-scores
  type: File
- doc: Read arcmatch scores.
  id: read_arc_match_scores
  inputBinding:
    prefix: --read-arcmatch-scores
  type: File
- doc: Read arcmatch probabilities (weighted by factor mea_beta/100)
  id: read_arc_match_probs
  inputBinding:
    prefix: --read-arcmatch-probs
  type: File
- doc: Use relaxed semantics of anchor constraints [default=strict semantics].
  id: relaxed_anchors
  inputBinding:
    prefix: --relaxed-anchors
  type: boolean

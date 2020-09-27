class: CommandLineTool
id: htop.cwl
inputs:
- id: in_emulate_hmm_fragment
  doc: ': emulate HMM fragment search (HMMER1 specific).'
  type: boolean
  inputBinding:
    prefix: -f
- id: in_force_insert_scores
  doc: ': force insert extension scores to zero.'
  type: boolean
  inputBinding:
    prefix: -i
- id: in_impose_limit_line
  doc: ': do not impose limit on line length.'
  type: boolean
  inputBinding:
    prefix: -l
- id: in_assume_input_format
  doc: ': assume input to be HMMER1 format (default: HMMER2).'
  type: boolean
  inputBinding:
    prefix: -o
- id: in_implement_semiglobal_alignment
  doc: ': implement semiglobal alignment.'
  type: boolean
  inputBinding:
    prefix: -s
- id: in_value_hmmer_specificnormalization
  doc: "<value>:     (HMMER1 specific)\nnormalization logarithmic base (default: 2.0)."
  type: boolean
  inputBinding:
    prefix: -B
- id: in_valuelevel_zero_cutoff
  doc: "<value>:\nlevel zero cut-off value (default: 8.5)."
  type: boolean
  inputBinding:
    prefix: -C
- id: in_value_hmmer_specificoutput
  doc: "<value>:     (HMMER2 specific)\noutput score multiplier (default: 100)."
  type: boolean
  inputBinding:
    prefix: -F
- id: in_value_only_effective
  doc: "<value>:     (only effective with option -s)\ninitiation/termination score\
    \ (default: *)."
  type: boolean
  inputBinding:
    prefix: -H
- id: in_value_hmmer_logarithmic
  doc: "<value>:     (HMMER1 specific)\nscore logarithmic base (default: 1.0233739)."
  type: boolean
  inputBinding:
    prefix: -L
- id: in_valuenumber_unprotected_residues
  doc: "<value>:\nnumber of unprotected residues at end of profile (default: 5)."
  type: boolean
  inputBinding:
    prefix: -M
- id: in_valuepercent_profile_length
  doc: "<value>:\npercent profile length not included in protected area (default:\
    \ 0)."
  type: boolean
  inputBinding:
    prefix: -P
- id: in_valueodds_ratio_unknown
  doc: "<value>:\nodds ratio of unknown residues (default: 0.8)."
  type: boolean
  inputBinding:
    prefix: -Q
- id: in_fhilosbcfhlmpq
  doc: ''
  type: boolean
  inputBinding:
    prefix: -fhilosBCFHLMPQ
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- htop

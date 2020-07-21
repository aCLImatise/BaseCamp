class: CommandLineTool
id: ../../../htop.cwl
inputs:
- id: emulate_search_hmmer
  doc: ': emulate HMM fragment search (HMMER1 specific).'
  type: boolean
  inputBinding:
    prefix: -f
- id: force_insert_extension
  doc: ': force insert extension scores to zero.'
  type: boolean
  inputBinding:
    prefix: -i
- id: impose_limit_line
  doc: ': do not impose limit on line length.'
  type: boolean
  inputBinding:
    prefix: -l
- id: assume_input_hmmer
  doc: ': assume input to be HMMER1 format (default: HMMER2).'
  type: boolean
  inputBinding:
    prefix: -o
- id: implement_semiglobal_alignment
  doc: ': implement semiglobal alignment.'
  type: boolean
  inputBinding:
    prefix: -s
- id: value_hmmer_specific_normalization
  doc: '<value>:     (HMMER1 specific) normalization logarithmic base (default: 2.0).'
  type: boolean
  inputBinding:
    prefix: -B
- id: value_level_zero
  doc: '<value>: level zero cut-off value (default: 8.5).'
  type: boolean
  inputBinding:
    prefix: -C
- id: value_hmmer_specific_output
  doc: '<value>:     (HMMER2 specific) output score multiplier (default: 100).'
  type: boolean
  inputBinding:
    prefix: -F
- id: value_only_effective
  doc: '<value>:     (only effective with option -s) initiation/termination score
    (default: *).'
  type: boolean
  inputBinding:
    prefix: -H
- id: value_hmmer_specific_score
  doc: '<value>:     (HMMER1 specific) score logarithmic base (default: 1.0233739).'
  type: boolean
  inputBinding:
    prefix: -L
- id: value_number_unprotected
  doc: '<value>: number of unprotected residues at end of profile (default: 5).'
  type: boolean
  inputBinding:
    prefix: -M
- id: value_percent_profile
  doc: '<value>: percent profile length not included in protected area (default: 0).'
  type: boolean
  inputBinding:
    prefix: -P
- id: value_odds_ratio
  doc: '<value>: odds ratio of unknown residues (default: 0.8).'
  type: boolean
  inputBinding:
    prefix: -Q
- id: fhilosbcfhlmpq
  doc: ''
  type: boolean
  inputBinding:
    prefix: -fhilosBCFHLMPQ
outputs: []
cwlVersion: v1.1
baseCommand:
- htop

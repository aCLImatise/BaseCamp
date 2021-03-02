class: CommandLineTool
id: pfmake.cwl
inputs:
- id: in_global_alignment_mode
  doc: ': global alignment mode.'
  type: boolean?
  inputBinding:
    prefix: '-0'
- id: in_domain_global_mode
  doc: ': domain global alignment mode.'
  type: boolean?
  inputBinding:
    prefix: '-1'
- id: in_semiglobal_alignment_mode
  doc: ': semi-global alignment mode.'
  type: boolean?
  inputBinding:
    prefix: '-2'
- id: in_local_alignment_mode
  doc: ': local alignment mode.'
  type: boolean?
  inputBinding:
    prefix: '-3'
- id: in_asymmetrical_gap_weighting
  doc: ': asymmetrical gap weighting.'
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_block_profile_mode
  doc: ': block profile mode.'
  type: boolean?
  inputBinding:
    prefix: -b
- id: in__circular_profile
  doc: ': circular profile.'
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_enable_endgapweighting_mode
  doc: ': enable endgap-weighting mode.'
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_input_sequences_msa
  doc: ': input sequences in MSA format.'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_impose_limit_line
  doc: ': do not impose limit on line length.'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_symmetrical_gap_weighting
  doc: ': symmetrical gap weighting.'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_valuegap_extension_penalty
  doc: "<value>:\ngap extension penalty (default: 0.2)."
  type: boolean?
  inputBinding:
    prefix: -E
- id: in_valueoutput_score_default
  doc: "<value>:\noutput score multiplier (default: 100)"
  type: boolean?
  inputBinding:
    prefix: -F
- id: in_valuegap_opening_penalty
  doc: "<value>:\ngap opening penalty (default: 2.1)"
  type: boolean?
  inputBinding:
    prefix: -G
- id: in_valuehigh_cost_initiationtermination
  doc: "<value>:\nhigh cost initiation/termination score (default: *)"
  type: boolean?
  inputBinding:
    prefix: -H
- id: in_valuegap_penalty_multiplier
  doc: "<value>:\ngap penalty multiplier increment (default: 0.1)"
  type: boolean?
  inputBinding:
    prefix: -I
- id: in_valuelow_cost_initiationtermination
  doc: "<value>:\nlow cost initiation/termination score (default:  0)."
  type: boolean?
  inputBinding:
    prefix: -L
- id: in_valuemaximum_gap_penalty
  doc: "<value>:\nmaximum gap penalty multiplier (default: 0.333)."
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_valuescore_matrix_multiplier
  doc: "<value>:\nscore matrix multiplier (default: 0.1)"
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_valuegap_region_threshold
  doc: "<value>:\ngap region threshold (default: 0.01)"
  type: boolean?
  inputBinding:
    prefix: -T
- id: in_valuegap_excision_threshold
  doc: "<value>:\ngap excision threshold (default: 0.5)"
  type: boolean?
  inputBinding:
    prefix: -X
- id: in_zero_one_two_three_abcehlsefghilmstx
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -0123abcehlsEFGHILMSTX
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pfmake

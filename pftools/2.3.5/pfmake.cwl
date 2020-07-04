class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pfmake.cwl
inputs:
- id: global_alignment_mode
  doc: ': global alignment mode.'
  type: boolean
  inputBinding:
    prefix: '-0'
- id: domain_global_alignment
  doc: ': domain global alignment mode.'
  type: boolean
  inputBinding:
    prefix: '-1'
- id: semiglobal_alignment_mode
  doc: ': semi-global alignment mode.'
  type: boolean
  inputBinding:
    prefix: '-2'
- id: local_alignment_mode
  doc: ': local alignment mode.'
  type: boolean
  inputBinding:
    prefix: '-3'
- id: asymmetrical_gap_weighting
  doc: ': asymmetrical gap weighting.'
  type: boolean
  inputBinding:
    prefix: -a
- id: block_profile_mode
  doc: ': block profile mode.'
  type: boolean
  inputBinding:
    prefix: -b
- id: _circular_profile
  doc: ': circular profile.'
  type: boolean
  inputBinding:
    prefix: -c
- id: enable_endgapweighting_mode
  doc: ': enable endgap-weighting mode.'
  type: boolean
  inputBinding:
    prefix: -e
- id: input_sequences_msa
  doc: ': input sequences in MSA format.'
  type: boolean
  inputBinding:
    prefix: -m
- id: impose_limit_line
  doc: ': do not impose limit on line length.'
  type: boolean
  inputBinding:
    prefix: -l
- id: symmetrical_gap_weighting
  doc: ': symmetrical gap weighting.'
  type: boolean
  inputBinding:
    prefix: -s
- id: value_gap_extension
  doc: '<value>: gap extension penalty (default: 0.2).'
  type: boolean
  inputBinding:
    prefix: -E
- id: value_output_score
  doc: '<value>: output score multiplier (default: 100)'
  type: boolean
  inputBinding:
    prefix: -F
- id: value_gap_opening
  doc: '<value>: gap opening penalty (default: 2.1)'
  type: boolean
  inputBinding:
    prefix: -G
- id: value_high_cost
  doc: '<value>: high cost initiation/termination score (default: *)'
  type: boolean
  inputBinding:
    prefix: -H
- id: value_gap_penalty
  doc: '<value>: gap penalty multiplier increment (default: 0.1)'
  type: boolean
  inputBinding:
    prefix: -I
- id: value_low_cost
  doc: '<value>: low cost initiation/termination score (default:  0).'
  type: boolean
  inputBinding:
    prefix: -L
- id: value_maximum_gap
  doc: '<value>: maximum gap penalty multiplier (default: 0.333).'
  type: boolean
  inputBinding:
    prefix: -M
- id: value_score_matrix
  doc: '<value>: score matrix multiplier (default: 0.1)'
  type: boolean
  inputBinding:
    prefix: -S
- id: value_gap_region
  doc: '<value>: gap region threshold (default: 0.01)'
  type: boolean
  inputBinding:
    prefix: -T
- id: value_gap_excision
  doc: '<value>: gap excision threshold (default: 0.5)'
  type: boolean
  inputBinding:
    prefix: -X
- id: zero_one_two_three_abcehlsefghilmstx
  doc: ''
  type: boolean
  inputBinding:
    prefix: -0123abcehlsEFGHILMSTX
outputs: []
cwlVersion: v1.1
baseCommand:
- pfmake

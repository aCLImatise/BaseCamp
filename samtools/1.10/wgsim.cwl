class: CommandLineTool
id: ../../../wgsim.cwl
inputs:
- id: base_error_rate
  doc: base error rate [0.000]
  type: double
  inputBinding:
    prefix: -e
- id: outer_distance_two
  doc: outer distance between the two ends [500]
  type: long
  inputBinding:
    prefix: -d
- id: standard_deviation
  doc: standard deviation [50]
  type: long
  inputBinding:
    prefix: -s
- id: number_read_pairs
  doc: number of read pairs [1000000]
  type: long
  inputBinding:
    prefix: -N
- id: length_first_read
  doc: length of the first read [70]
  type: long
  inputBinding:
    prefix: '-1'
- id: length_second_read
  doc: length of the second read [70]
  type: long
  inputBinding:
    prefix: '-2'
- id: rate_of_mutations
  doc: rate of mutations [0.0010]
  type: double
  inputBinding:
    prefix: -r
- id: fraction_of_indels
  doc: fraction of indels [0.15]
  type: double
  inputBinding:
    prefix: -R
- id: probability_indel_extended
  doc: probability an indel is extended [0.30]
  type: double
  inputBinding:
    prefix: -X
- id: seed_random_generator
  doc: seed for random generator [0, use the current time]
  type: long
  inputBinding:
    prefix: -S
- id: discard_fraction_higher
  doc: discard if the fraction of ambiguous bases higher than FLOAT [0.05]
  type: double
  inputBinding:
    prefix: -A
- id: in_dot_ref_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_dot_read_one_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_dot_read_two_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- wgsim

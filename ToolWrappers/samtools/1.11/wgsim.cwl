class: CommandLineTool
id: wgsim.cwl
inputs:
- id: in_base_error_rate
  doc: base error rate [0.000]
  type: double?
  inputBinding:
    prefix: -e
- id: in_outer_distance_two
  doc: outer distance between the two ends [500]
  type: long?
  inputBinding:
    prefix: -d
- id: in_standard_deviation
  doc: standard deviation [50]
  type: long?
  inputBinding:
    prefix: -s
- id: in_number_read_pairs
  doc: number of read pairs [1000000]
  type: long?
  inputBinding:
    prefix: -N
- id: in_length_first_read
  doc: length of the first read [70]
  type: long?
  inputBinding:
    prefix: '-1'
- id: in_length_second_read
  doc: length of the second read [70]
  type: long?
  inputBinding:
    prefix: '-2'
- id: in_rate_of_mutations
  doc: rate of mutations [0.0010]
  type: double?
  inputBinding:
    prefix: -r
- id: in_fraction_of_indels
  doc: fraction of indels [0.15]
  type: double?
  inputBinding:
    prefix: -R
- id: in_probability_indel_extended
  doc: probability an indel is extended [0.30]
  type: double?
  inputBinding:
    prefix: -X
- id: in_seed_random_generator
  doc: seed for random generator [0, use the current time]
  type: long?
  inputBinding:
    prefix: -S
- id: in_discard_fraction_ambiguous
  doc: discard if the fraction of ambiguous bases higher than FLOAT [0.05]
  type: double?
  inputBinding:
    prefix: -A
- id: in_in_dot_ref_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_out_dot_read_one_dot_fq
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_out_dot_read_two_dot_fq
  doc: ''
  type: long
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/samtools:1.11--h6270b1f_0
cwlVersion: v1.1
baseCommand:
- wgsim

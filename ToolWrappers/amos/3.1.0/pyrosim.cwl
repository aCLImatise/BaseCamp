class: CommandLineTool
id: pyrosim.cwl
inputs:
- id: in_nucleotide_flow_order
  doc: Nucleotide flow order for one round, default acgt
  type: string?
  inputBinding:
    prefix: -f
- id: in_calculate_use_permutation
  doc: Calculate and use the optimal flow permutation for -f
  type: boolean?
  inputBinding:
    prefix: -F
- id: in_number_round_iterations
  doc: Number round iterations to simulate, default 40
  type: long?
  inputBinding:
    prefix: -i
- id: in_number_sequenceable_homopolymer
  doc: "Number of sequence-able homopolymer bases per flow,\ndefault 15"
  type: long?
  inputBinding:
    prefix: -p
- id: in_number_reads_sequence
  doc: Number of reads to sequence, default 1000
  type: long?
  inputBinding:
    prefix: -r
- id: in_set_random_generator
  doc: "Set random generator seed, default seed is generated\nby the system clock"
  type: string?
  inputBinding:
    prefix: -s
- id: in_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pyrosim

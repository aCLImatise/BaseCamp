class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/tantan.cwl
inputs:
- id: interpret_sequences_proteins
  doc: interpret the sequences as proteins
  type: boolean
  inputBinding:
    prefix: -p
- id: letter_use_masking
  doc: letter to use for masking, instead of lowercase
  type: boolean
  inputBinding:
    prefix: -x
- id: preserve_uppercaselowercase_nonmasked
  doc: preserve uppercase/lowercase in non-masked regions
  type: boolean
  inputBinding:
    prefix: -c
- id: file_selects_blosum
  doc: file for letter pair scores (+1/-1, but -p selects BLOSUM62)
  type: boolean
  inputBinding:
    prefix: -m
- id: probability_repeat_starting
  doc: probability of a repeat starting per position (0.005)
  type: boolean
  inputBinding:
    prefix: -r
- id: probability_repeat_ending
  doc: probability of a repeat ending per position (0.05)
  type: boolean
  inputBinding:
    prefix: -e
- id: maximum_tandem_repeat
  doc: maximum tandem repeat period to consider (100, but -p selects 50)
  type: boolean
  inputBinding:
    prefix: -w
- id: probability_decay_period
  doc: probability decay per period (0.9)
  type: boolean
  inputBinding:
    prefix: -d
- id: gap_existence_cost
  doc: gap existence cost (0)
  type: boolean
  inputBinding:
    prefix: -a
- id: gap_extension_cost
  doc: 'gap extension cost (infinite: no gaps)'
  type: boolean
  inputBinding:
    prefix: -b
- id: minimum_repeat_probability
  doc: minimum repeat probability for masking (0.5)
  type: boolean
  inputBinding:
    prefix: -s
- id: output_type_masked
  doc: 'output type: 0=masked sequence, 1=repeat probabilities, 2=repeat counts, 3=BED
    (0)'
  type: boolean
  inputBinding:
    prefix: -f
- id: fast_a_sequence_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- tantan

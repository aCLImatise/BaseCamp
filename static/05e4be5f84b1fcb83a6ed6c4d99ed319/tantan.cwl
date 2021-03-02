class: CommandLineTool
id: tantan.cwl
inputs:
- id: in_interpret_sequences_proteins
  doc: interpret the sequences as proteins
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_letter_use_lowercase
  doc: letter to use for masking, instead of lowercase
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_preserve_uppercaselowercase_nonmasked
  doc: preserve uppercase/lowercase in non-masked regions
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_file_letterpair_score
  doc: file for letter-pair score matrix
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_probability_repeat_starting
  doc: probability of a repeat starting per position (0.005)
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_probability_repeat_ending
  doc: probability of a repeat ending per position (0.05)
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_maximum_tandem_repeat
  doc: maximum tandem repeat period to consider (100, but -p selects 50)
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_probability_decay_period
  doc: probability decay per period (0.9)
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_match_score_blosum
  doc: match score (BLOSUM62 if -p, else 2 if -f4, else 1)
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_mismatch_cost_blosum
  doc: mismatch cost (BLOSUM62 if -p, else 7 if -f4, else 1)
  type: boolean?
  inputBinding:
    prefix: -j
- id: in_gap_existence_cost
  doc: gap existence cost (0)
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_gap_extension_cost
  doc: gap extension cost (7 if -f4, else infinity)
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_minimum_repeat_probability
  doc: minimum repeat probability for masking (0.5)
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_minimum_copy_number
  doc: minimum copy number, affects -f4 only (2)
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_output_type_masked
  doc: "output type: 0=masked sequence, 1=repeat probabilities,\n2=repeat counts,\
    \ 3=BED, 4=tandem repeats (0)"
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_fast_a_sequence_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/tantan:26--he1b5a44_0
cwlVersion: v1.1
baseCommand:
- tantan

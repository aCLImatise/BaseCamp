class: CommandLineTool
id: pfw.cwl
inputs:
- id: in_input_sequences_msa
  doc: ': input sequences in MSA format.'
  type: boolean
  inputBinding:
    prefix: -m
- id: in_valuenumber_shuffles_sequence
  doc: "<value>:\nnumber of shuffles per sequence (default: 100)."
  type: boolean
  inputBinding:
    prefix: -N
- id: in_valuegap_excision_threshold
  doc: "<value>:\ngap excision threshold (default: 0.5)."
  type: boolean
  inputBinding:
    prefix: -X
- id: in_valuerandom_number_seed
  doc: "<value>:\nrandom number seed, negative integer (default: -123456789)."
  type: boolean
  inputBinding:
    prefix: -R
- id: in_valuetotal_weight_default
  doc: "<value>:\ntotal weight (default: 1)."
  type: boolean
  inputBinding:
    prefix: -W
- id: in_hmn_x_rw
  doc: ''
  type: boolean
  inputBinding:
    prefix: -hmNXRW
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pfw

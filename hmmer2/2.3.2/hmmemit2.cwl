class: CommandLineTool
id: ../../../hmmemit2.cwl
inputs:
- id: write_generated_sequences
  doc: ': write generated sequences as an alignment, not FASTA'
  type: boolean
  inputBinding:
    prefix: -a
- id: generate_single_sequence
  doc: ': generate a single "consensus" sequence'
  type: boolean
  inputBinding:
    prefix: -c
- id: emit_n_sequences
  doc: ': emit <n> sequences (default 10)'
  type: string
  inputBinding:
    prefix: -n
- id: save_sequences_file
  doc: ': save sequences in file <f>'
  type: string
  inputBinding:
    prefix: -o
- id: quiet_suppress_verbose
  doc: ': quiet - suppress verbose banner'
  type: boolean
  inputBinding:
    prefix: -q
- id: seed
  doc: ': set random number seed to <n>'
  type: string
  inputBinding:
    prefix: --seed
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: hmm_emit
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: hmm_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- hmmemit2

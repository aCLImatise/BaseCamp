class: CommandLineTool
id: hmmemit2.cwl
inputs:
- id: in_write_generated_sequences
  doc: ': write generated sequences as an alignment, not FASTA'
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_generate_single_sequence
  doc: ': generate a single "consensus" sequence'
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_emit_sequences_default
  doc: ': emit <n> sequences (default 10)'
  type: long?
  inputBinding:
    prefix: -n
- id: in_save_sequences_file
  doc: ': save sequences in file <f>'
  type: File?
  inputBinding:
    prefix: -o
- id: in_quiet_suppress_verbose
  doc: ': quiet - suppress verbose banner'
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_seed
  doc: ': set random number seed to <n>'
  type: long?
  inputBinding:
    prefix: --seed
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -options
- id: in_hmm_emit
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_hmm_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hmmemit2

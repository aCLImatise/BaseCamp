class: CommandLineTool
id: ../../../ribo_sim.cwl
inputs:
- id: output
  doc: 'output directory; default: /tmp/tmpdvlbjbbn'
  type: string
  inputBinding:
    prefix: --output
- id: verbosity
  doc: 'Logger writes debug to file in output dir; this sets verbosity level sent
    to stderr. 1 = debug(), 2 = info(), 3 = warning(), 4 = error() and 5 = critical();
    default: 2'
  type: string
  inputBinding:
    prefix: --verbosity
- id: frequency
  doc: 'Probability of mutated basesdefault: 0.01'
  type: string
  inputBinding:
    prefix: --frequency
- id: end_length
  doc: 'if value given, only mutated the ends of the sequences and ignore the middledefault:
    None'
  type: string
  inputBinding:
    prefix: --end_length
- id: seed
  doc: 'cause reproduciblity; default: None'
  type: string
  inputBinding:
    prefix: --seed
- id: fast_a
  doc: (multi)fasta file containing the sequences to be mutated
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ribo
- sim

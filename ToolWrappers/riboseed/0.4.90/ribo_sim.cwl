class: CommandLineTool
id: ribo_sim.cwl
inputs:
- id: in_output
  doc: 'output directory; default: /'
  type: Directory
  inputBinding:
    prefix: --output
- id: in_verbosity
  doc: "Logger writes debug to file in output dir; this sets\nverbosity level sent\
    \ to stderr. 1 = debug(), 2 =\ninfo(), 3 = warning(), 4 = error() and 5 = critical();\n\
    default: 2"
  type: File
  inputBinding:
    prefix: --verbosity
- id: in_frequency
  doc: 'Probability of mutated basesdefault: 0.01'
  type: double
  inputBinding:
    prefix: --frequency
- id: in_end_length
  doc: "if value given, only mutated the ends of the sequences\nand ignore the middledefault:\
    \ None"
  type: long
  inputBinding:
    prefix: --end_length
- id: in_seed
  doc: 'cause reproduciblity; default: None'
  type: string
  inputBinding:
    prefix: --seed
- id: in_mutated
  doc: 'required named arguments:'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'output directory; default: /'
  type: Directory
  outputBinding:
    glob: $(inputs.in_output)
- id: out_verbosity
  doc: "Logger writes debug to file in output dir; this sets\nverbosity level sent\
    \ to stderr. 1 = debug(), 2 =\ninfo(), 3 = warning(), 4 = error() and 5 = critical();\n\
    default: 2"
  type: File
  outputBinding:
    glob: $(inputs.in_verbosity)
cwlVersion: v1.1
baseCommand:
- ribo
- sim

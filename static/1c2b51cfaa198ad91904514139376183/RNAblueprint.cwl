class: CommandLineTool
id: RNAblueprint.cwl
inputs:
- id: in__be_verbose
  doc: '[ --verbose ]             be verbose'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_be_verbose_debugging
  doc: '[ --debug ]               be verbose for debugging'
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_arg_input_file
  doc: "[ --in ] arg              input file which contains the structures,\nsequence\
    \ constraints and the start sequence\n[string]\nstructures: secondary structures\
    \ in dot-bracket\nnotation. one structure per input\nline\nsequence constraints:\
    \ Permanent sequence\nconstraints in IUPAC\nnotation [ACGTUWSMKRYBDHVN\n] (optional)\n\
    start sequence:  A initial RNA sequence to start\nthe sampling from [ACGU]\n(optional)"
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_arg_output_file
  doc: "[ --out ] arg             output file for writing the sequences (default:\n\
    stdout) [string]"
  type: File?
  inputBinding:
    prefix: -o
- id: in_arg_write_file
  doc: "[ --graphml ] arg         write a GraphML file representing the dependency\n\
    graph to the given filename (optional) [string]"
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_sample_stochastic_sampling
  doc: "[ --mode ] arg (=sample)  mode for sequence generation [string]:\nsample:\
    \ stochastic sampling of all positions\n(default)\nsample-clocal: Only sample\
    \ one connected\ncomponent at a time starting from\nan initial sequence\nsample-plocal:\
    \ Sample only single paths starting\nfrom an initial sequence\nclocal-neighbors:\
    \ Only find neighboring\nsequences to the initial start\nsequence by sampling\
    \ one\nconnected component only\nplocal-neighbors: Only find neighboring\nsequences\
    \ to the initial start\nsequence by sampling one path\nonly"
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_s
  doc: '[ --seed ] arg            random number generator seed [unsigned long]'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_n
  doc: '[ --num ] arg (=10)       number of designs (default: 10) [unsigned int]'
  type: boolean?
  inputBinding:
    prefix: -n
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_output_file
  doc: "[ --out ] arg             output file for writing the sequences (default:\n\
    stdout) [string]"
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- RNAblueprint

class: CommandLineTool
id: ribo_stack.cwl
inputs:
- id: in_output
  doc: 'output directory; default: /'
  type: Directory
  inputBinding:
    prefix: --output
- id: in_bam
  doc: 'BAM file; tested with BWA output; default: None'
  type: File
  inputBinding:
    prefix: --bam
- id: in_ribose_ed_dir
  doc: look for BAM file in this riboSeed output directory
  type: File
  inputBinding:
    prefix: --riboSeed_dir
- id: in_n_samples
  doc: "Number of regions to compare rDNA depth to; must be\ngreater than 1; default:\
    \ 10"
  type: long
  inputBinding:
    prefix: --n_samples
- id: in_experiment_name
  doc: 'prefix for results files; default: riboStack'
  type: string
  inputBinding:
    prefix: --experiment_name
- id: in_infer
  doc: "If --infer, ignore the name and length of reference\nsequence, using the BAM\
    \ header instead default: False"
  type: boolean
  inputBinding:
    prefix: --infer
- id: in_verbosity
  doc: "Logger writes debug to file in output dir; this sets\nverbosity level sent\
    \ to stderr. 1 = debug(), 2 =\ninfo(), 3 = warning(), 4 = error() and 5 = critical();\n\
    default: 2"
  type: File
  inputBinding:
    prefix: --verbosity
- id: in_run_dot
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
- id: out_bam
  doc: 'BAM file; tested with BWA output; default: None'
  type: File
  outputBinding:
    glob: $(inputs.in_bam)
- id: out_ribose_ed_dir
  doc: look for BAM file in this riboSeed output directory
  type: File
  outputBinding:
    glob: $(inputs.in_ribose_ed_dir)
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
- stack

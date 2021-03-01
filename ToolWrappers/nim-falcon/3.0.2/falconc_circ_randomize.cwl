class: CommandLineTool
id: falconc_circ_randomize.cwl
inputs:
- id: in_help_syntax
  doc: 'advanced: prepend,plurals,..'
  type: boolean?
  inputBinding:
    prefix: --help-syntax
- id: in__input_string
  doc: =, --input=   string  REQUIRED  fasta file of circular sequences
  type: boolean?
  inputBinding:
    prefix: -i
- id: in__output_string
  doc: =, --output=  string  REQUIRED  fasta file output
  type: File?
  inputBinding:
    prefix: -o
- id: in_seed_set_seed
  doc: =, --seed=    int64   0         set seed, if non-zero
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_circ_randomize
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__output_string
  doc: =, --output=  string  REQUIRED  fasta file output
  type: File?
  outputBinding:
    glob: $(inputs.in__output_string)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/nim-falcon:3.0.2--h1341992_0
cwlVersion: v1.1
baseCommand:
- falconc
- circ-randomize

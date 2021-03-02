class: CommandLineTool
id: falconc_pbreports_circ.cwl
inputs:
- id: in_help_syntax
  doc: 'advanced: prepend,plurals,..'
  type: boolean?
  inputBinding:
    prefix: --help-syntax
- id: in_fastafn_string_required
  doc: "=, --fasta-fn=  string  REQUIRED  FASTA filename, preferably indexed (with\n\
    .fai)"
  type: boolean?
  inputBinding:
    prefix: -f
- id: in__circfn_string
  doc: "=, --circ-fn=   string  REQUIRED  Text list of circular contigs\n(newline-delimited)\n"
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_pb_reports_circ
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/nim-falcon:3.0.2--h1341992_0
cwlVersion: v1.1
baseCommand:
- falconc
- pbreports-circ

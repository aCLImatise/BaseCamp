class: CommandLineTool
id: falconc_pbreports_circ.cwl
inputs:
- id: in_help_syntax
  doc: 'advanced: prepend,plurals,..'
  type: boolean
  inputBinding:
    prefix: --help-syntax
- id: in__fastafn_string
  doc: "=, --fasta-fn=  string  REQUIRED  FASTA filename, preferably indexed (with\n\
    .fai)"
  type: boolean
  inputBinding:
    prefix: -f
- id: in__circfn_string
  doc: "=, --circ-fn=   string  REQUIRED  Text list of circular contigs\n(newline-delimited)\n"
  type: boolean
  inputBinding:
    prefix: -c
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- falconc
- pbreports-circ

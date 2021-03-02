class: CommandLineTool
id: falconc_paf_filter.cwl
inputs:
- id: in_help_syntax
  doc: 'advanced: prepend,plurals,..'
  type: boolean?
  inputBinding:
    prefix: --help-syntax
- id: in__faifn_string
  doc: "=, --fai-fn=      string  REQUIRED  input fasta-index filename (as in\nfoo.fasta.fai,\
    \ but assume foo.fasta is\nnext to it; foo.fasta must then exist,\nbut it can\
    \ be empty since it is ignored)"
  type: boolean?
  inputBinding:
    prefix: -f
- id: in__inpaffn_string
  doc: =, --in-paf-fn=   string  "-"       paf filename ('-' => stdin)
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_outpaffn_string_filename
  doc: "=, --out-paf-fn=  string  \"-\"       output paf filename, with only the\n\
    contigs inside the fasta ('-' => stdout)\n"
  type: File?
  inputBinding:
    prefix: -o
- id: in_paf_filter
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outpaffn_string_filename
  doc: "=, --out-paf-fn=  string  \"-\"       output paf filename, with only the\n\
    contigs inside the fasta ('-' => stdout)\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_outpaffn_string_filename)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/nim-falcon:3.0.2--h1341992_0
cwlVersion: v1.1
baseCommand:
- falconc
- paf-filter

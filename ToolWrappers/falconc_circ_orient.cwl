class: CommandLineTool
id: falconc_circ_orient.cwl
inputs:
- id: in_help_syntax
  doc: 'advanced: prepend,plurals,..'
  type: boolean
  inputBinding:
    prefix: --help-syntax
- id: in__inputfn_string
  doc: =, --input-fn=   string  REQUIRED  fasta (or fastq) file of circular
  type: boolean
  inputBinding:
    prefix: -i
- id: in__wlfn_string
  doc: "=, --wl-fn=      string  \"\"        white list of sequences to rotate, one\n\
    per line, no spaces, no trailing spaces"
  type: boolean
  inputBinding:
    prefix: -w
- id: in_window
  doc: =          int     500       window size to caculate gc-skew
  type: boolean
  inputBinding:
    prefix: --window
- id: in__step_step
  doc: =, --step=       int     200       window step
  type: boolean
  inputBinding:
    prefix: -s
- id: in_print
  doc: "bool    false     print skew data to files\n('SEQ.gc_skew.txt'), one per sequence\n"
  type: boolean
  inputBinding:
    prefix: --print
- id: in_sequences
  doc: -o=, --output-fn=  string  REQUIRED  fasta (or fastq) file output
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- falconc
- circ-orient

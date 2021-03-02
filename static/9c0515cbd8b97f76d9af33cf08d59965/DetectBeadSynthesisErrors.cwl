class: CommandLineTool
id: DetectBeadSynthesisErrors.cwl
inputs:
- id: in_default_g
  doc: (default 4g)
  type: long?
  inputBinding:
    prefix: -m
- id: in_final_command_line
  doc: final command line before executing
  type: string?
  inputBinding:
    prefix: -v
- id: in_std_help
  doc: "Displays options specific to this tool AND options common to all Picard command\
    \ line\ntools."
  type: boolean?
  inputBinding:
    prefix: --stdhelp
- id: in_barcode_dot
  doc: 'The data has multiple columns: the cell barcode, the number of UMIs, then
    one'
  type: string
  inputBinding:
    position: 0
- id: in_bases_dot
  doc: Bases are ordered A,C,G,T for these columns.  An example output with a single
    base
  type: string
  inputBinding:
    position: 0
- id: in_errors_dot
  doc: This is typically the last base of the UMI.  If set to null, program will use
    the
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- DetectBeadSynthesisErrors

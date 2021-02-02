class: CommandLineTool
id: fasta_utils_translate.cwl
inputs:
- id: in_verbose
  doc: "-t, --trans-table [bac_plt|drs_mit|inv_mit|prt_mit|universal|vt_mit|yst_alt|yst_mit]\n\
    translation table  [default: universal]\n--progress                      Shows\
    \ Progress Bar\n--help                          Show this message and exit.\n"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_fast_a_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fasta-utils
- translate

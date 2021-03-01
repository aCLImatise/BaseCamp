class: CommandLineTool
id: psascan.cwl
inputs:
- id: in_gap
  doc: "specify the file holding the gap array (default:\nFILE.sa5.gap)"
  type: File?
  inputBinding:
    prefix: --gap
- id: in_mem
  doc: 'limit RAM usage to LIMIT MiB (default: 3072)'
  type: long?
  inputBinding:
    prefix: --mem
- id: in_output
  doc: 'specify the output file (default: FILE.sa5)'
  type: File?
  inputBinding:
    prefix: --output
- id: in_verbose
  doc: print detailed information during internal sufsort
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'specify the output file (default: FILE.sa5)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- psascan

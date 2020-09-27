class: CommandLineTool
id: seq_seq_pan_xmfa.cwl
inputs:
- id: in_quiet
  doc: Suppress warnings.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_order
  doc: "Ordering of blocks in XMFA/FASTA output (0,1,2,...)\n[default: 0]"
  type: long
  inputBinding:
    prefix: --order
- id: in_output_path
  doc: path to output directory
  type: File
  inputBinding:
    prefix: --output_path
- id: in_name
  doc: "File prefix and sequence header for output FASTA /\nXFMA file"
  type: File
  inputBinding:
    prefix: --name
- id: in_xmfa_input_file
  doc: "XMFA input file\n"
  type: File
  inputBinding:
    prefix: --xmfa
- id: in_seq_seq_pando_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_6
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_path
  doc: path to output directory
  type: File
  outputBinding:
    glob: $(inputs.in_output_path)
- id: out_name
  doc: "File prefix and sequence header for output FASTA /\nXFMA file"
  type: File
  outputBinding:
    glob: $(inputs.in_name)
cwlVersion: v1.1
baseCommand:
- seq-seq-pan
- xmfa

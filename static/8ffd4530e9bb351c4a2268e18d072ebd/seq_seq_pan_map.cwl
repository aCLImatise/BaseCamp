class: CommandLineTool
id: seq_seq_pan_map.cwl
inputs:
- id: in_quiet
  doc: Suppress warnings.
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_output_path
  doc: path to output directory
  type: File?
  inputBinding:
    prefix: --output_path
- id: in_name
  doc: "File prefix and sequence header for output FASTA /\nXFMA file"
  type: File?
  inputBinding:
    prefix: --name
- id: in_consensus
  doc: consensus FASTA file used in XMFA
  type: File?
  inputBinding:
    prefix: --consensus
- id: in_index
  doc: "File with indices to map. First line:\nsource_seq<TAB>dest_seq[,dest_seq2,...]\
    \ using \"c\" or\nsequence number. Then one coordinate per line.\nCoordinates\
    \ are 1-based!\n"
  type: long?
  inputBinding:
    prefix: --index
- id: in_seq_seq_pando_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_map
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
  type: File?
  outputBinding:
    glob: $(inputs.in_output_path)
- id: out_name
  doc: "File prefix and sequence header for output FASTA /\nXFMA file"
  type: File?
  outputBinding:
    glob: $(inputs.in_name)
hints: []
cwlVersion: v1.1
baseCommand:
- seq-seq-pan
- map

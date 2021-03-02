class: CommandLineTool
id: seq_seq_pan_mapall.cwl
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
  doc: "File with sequences to map. First line:\nc<TAB>dest_seq[,dest_seq2,...] or\n\
    source_seq[,source_seq2]<TAB>c. All following lines\nwill be ignored."
  type: File?
  inputBinding:
    prefix: --index
- id: in_threads
  doc: "Number of threads to use for mapping all positions.\nUsing all available threads\
    \ if not specified.\n"
  type: long?
  inputBinding:
    prefix: --threads
- id: in_seq_seq_pando_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_map_all
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
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/seq-seq-pan:1.1.0--py_1
cwlVersion: v1.1
baseCommand:
- seq-seq-pan
- mapall

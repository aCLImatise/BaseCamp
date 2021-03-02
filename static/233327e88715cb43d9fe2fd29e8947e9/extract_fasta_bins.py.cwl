class: CommandLineTool
id: extract_fasta_bins.py.cwl
inputs:
- id: in_output_path
  doc: "Directory where files will be printed\n"
  type: File?
  inputBinding:
    prefix: --output_path
- id: in_fast_a_file
  doc: Input Fasta file.
  type: string
  inputBinding:
    position: 0
- id: in_cluster_file
  doc: Concoct output cluster file
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_path
  doc: "Directory where files will be printed\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_path)
hints: []
cwlVersion: v1.1
baseCommand:
- extract_fasta_bins.py

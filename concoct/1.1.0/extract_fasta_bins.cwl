class: CommandLineTool
id: extract_fasta_bins.py.cwl
inputs:
- id: fast_a_file
  doc: Input Fasta file.
  type: string
  inputBinding:
    position: 0
- id: cluster_file
  doc: Concoct output cluster file
  type: string
  inputBinding:
    position: 1
- id: output_path
  doc: Directory where files will be printed
  type: string
  inputBinding:
    prefix: --output_path
outputs: []
cwlVersion: v1.1
baseCommand:
- extract_fasta_bins.py

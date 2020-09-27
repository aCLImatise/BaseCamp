class: CommandLineTool
id: prophyle_split_allseq.py.cwl
inputs:
- id: in_fasta_file
  doc: Fasta file [stdin]
  type: File
  inputBinding:
    prefix: -i
- id: in_output_dir
  doc: Path to the output directory
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- prophyle_split_allseq.py

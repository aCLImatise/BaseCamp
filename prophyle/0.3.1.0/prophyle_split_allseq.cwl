class: CommandLineTool
id: ../../../prophyle_split_allseq.py.cwl
inputs:
- id: fasta_file
  doc: Fasta file [stdin]
  type: string
  inputBinding:
    prefix: -i
- id: output_dir
  doc: Path to the output directory
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- prophyle_split_allseq.py

class: CommandLineTool
id: nib_chrom_intervals_to_fasta.py.cwl
inputs:
- id: in_nib_dir
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- nib_chrom_intervals_to_fasta.py

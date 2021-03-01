class: CommandLineTool
id: handle_fasta.py.cwl
inputs:
- id: in_complement
  doc: Create a double genome with both + and - strand
  type: boolean?
  inputBinding:
    prefix: --Complement
- id: in_conversion
  doc: ''
  type: string?
  inputBinding:
    prefix: -Conversion
- id: in_in_fast_a
  doc: FASTA format genome
  type: string
  inputBinding:
    position: 0
- id: in_out_fast_a
  doc: Output FASTA full path
  type: string
  inputBinding:
    position: 1
- id: in_chr_size_path
  doc: "Path to 2 column file with first column being the\nchromosome name and the\
    \ second column being the\nchromosome size"
  type: string
  inputBinding:
    position: 2
- id: in_chr_dir
  doc: "Path to directory for writing individual fasta files\nfor each chromosome"
  type: string
  inputBinding:
    position: 3
- id: in_information
  doc: -Conversion CONVERSION
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
- handle_fasta.py

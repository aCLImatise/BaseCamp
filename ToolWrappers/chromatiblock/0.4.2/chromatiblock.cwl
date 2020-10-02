class: CommandLineTool
id: chromatiblock.cwl
inputs:
- id: in_f
  doc: ''
  type: long[]
  inputBinding:
    prefix: -f
- id: in_l
  doc: ''
  type: string
  inputBinding:
    prefix: -l
- id: in_d
  doc: ''
  type: Directory
  inputBinding:
    prefix: -d
- id: in_gpl_v_three
  doc: 'USAGE: chromatiblock -f genome1.fasta genome2.fasta .... genomeN.fasta -o
    image.svg '
  type: long
  inputBinding:
    position: 0
- id: in_or
  doc: chromatiblock -d /path/to/fasta_directory/ -o image.svg
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- chromatiblock

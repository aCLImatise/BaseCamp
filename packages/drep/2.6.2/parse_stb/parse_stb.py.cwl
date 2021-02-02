class: CommandLineTool
id: parse_stb.py.cwl
inputs:
- id: in_stb
  doc: 'scaffold to bin file (default: None)'
  type: File
  inputBinding:
    prefix: --stb
- id: in_fasta_file_extract
  doc: "[FASTA [FASTA ...]], --fasta [FASTA [FASTA ...]]\nfasta file to extract scaffolds\
    \ from. Will treat as\ncompressed if ends in .gz (default: None)"
  type: boolean
  inputBinding:
    prefix: -f
- id: in_output
  doc: 'output base name (default: )'
  type: string
  inputBinding:
    prefix: --output
- id: in_reverse
  doc: 'generate a stb from a list of genomes (default: False)'
  type: boolean
  inputBinding:
    prefix: --reverse
- id: in_the
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_program
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_has
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_two
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_uses
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_related
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_scaffold
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_bin
  doc: ''
  type: string
  inputBinding:
    position: 9
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- parse_stb.py

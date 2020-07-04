class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/parse_stb.py.cwl
inputs:
- id: stb
  doc: 'scaffold to bin file (default: None)'
  type: string
  inputBinding:
    prefix: --stb
- id: fasta_file_extract
  doc: '[FASTA [FASTA ...]], --fasta [FASTA [FASTA ...]] fasta file to extract scaffolds
    from. Will treat as compressed if ends in .gz (default: None)'
  type: boolean
  inputBinding:
    prefix: -f
- id: output
  doc: 'output base name (default: )'
  type: string
  inputBinding:
    prefix: --output
- id: reverse
  doc: 'generate a stb from a list of genomes (default: False)'
  type: boolean
  inputBinding:
    prefix: --reverse
- id: the
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: program
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: has
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: two
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: uses
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: related
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: var_10
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: scaffold
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: var_12
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: bin
  doc: ''
  type: string
  inputBinding:
    position: 9
outputs: []
cwlVersion: v1.1
baseCommand:
- parse_stb.py

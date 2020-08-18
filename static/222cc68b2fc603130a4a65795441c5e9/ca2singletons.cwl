class: CommandLineTool
id: ../../../ca2singletons.cwl
inputs:
- id: asm_file
  doc: .asm file
  type: string
  inputBinding:
    prefix: -i
- id: fasta_file_name
  doc: .fasta file name
  type: string
  inputBinding:
    prefix: -o
- id: frg_file
  doc: '.frg file '
  type: string
  inputBinding:
    prefix: -f
- id: clear
  doc: outputs just the clear range of the singletons
  type: boolean
  inputBinding:
    prefix: -clear
- id: contig
  doc: outputs singletons in TIGR .contig format
  type: boolean
  inputBinding:
    prefix: -contig
- id: list
  doc: outputs a list of the singleton names
  type: boolean
  inputBinding:
    prefix: -list
outputs: []
cwlVersion: v1.1
baseCommand:
- ca2singletons

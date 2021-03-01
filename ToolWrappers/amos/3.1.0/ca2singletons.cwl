class: CommandLineTool
id: ca2singletons.cwl
inputs:
- id: in_asm_file
  doc: .asm file
  type: File?
  inputBinding:
    prefix: -i
- id: in_fasta_file_name
  doc: .fasta file name
  type: File?
  inputBinding:
    prefix: -o
- id: in_frg_file
  doc: .frg file
  type: File?
  inputBinding:
    prefix: -f
- id: in_clear
  doc: outputs just the clear range of the singletons
  type: boolean?
  inputBinding:
    prefix: -clear
- id: in_contig
  doc: outputs singletons in TIGR .contig format
  type: boolean?
  inputBinding:
    prefix: -contig
- id: in_list
  doc: outputs a list of the singleton names
  type: boolean?
  inputBinding:
    prefix: -list
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ca2singletons

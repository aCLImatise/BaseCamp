class: CommandLineTool
id: mikado_prepare.cwl
inputs:
- id: in_fast_a
  doc: ''
  type: string
  inputBinding:
    prefix: --fasta
- id: in_gff
  doc: Input GFF/GTF file(s).
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mikado
- prepare

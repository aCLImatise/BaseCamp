class: CommandLineTool
id: dr_disco_integrate.cwl
inputs:
- id: in_gtf
  doc: "Use gene annotation for estimating fusion genes and improve\nclassification\
    \ of exonic (GTF file)"
  type: File
  inputBinding:
    prefix: --gtf
- id: in_fast_a
  doc: "Use reference sequences to estimate edit distances to splice\njunction motifs\
    \ (FASTA file)"
  type: File
  inputBinding:
    prefix: --fasta
- id: in_table_input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_table_output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dr-disco
- integrate

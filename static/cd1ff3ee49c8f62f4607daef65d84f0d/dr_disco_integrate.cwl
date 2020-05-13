class: CommandLineTool
id: dr_disco_integrate.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: table_input_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: table_output_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: gtf
  doc: Use gene annotation for estimating fusion genes and improve classification
    of exonic (GTF file)
  type: string
  inputBinding:
    prefix: --gtf
- id: fast_a
  doc: Use reference sequences to estimate edit distances to splice junction motifs
    (FASTA file)
  type: string
  inputBinding:
    prefix: --fasta
outputs: []
cwlVersion: v1.1
baseCommand:
- dr-disco
- integrate

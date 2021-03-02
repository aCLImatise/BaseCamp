class: CommandLineTool
id: fathom.cwl
inputs:
- id: in_gene_stats
  doc: '[-errors-ok -nucleotide -dinucleotide]'
  type: boolean?
  inputBinding:
    prefix: -gene-stats
- id: in_exon_intron
  doc: <-number <int> | -training <float> | -GC <float> | -repeat <float>>
  type: double?
  inputBinding:
    prefix: -exon-intron
- id: in_ace_format
  doc: <-gene-method <string> [-dna -extra <string>]>
  type: boolean?
  inputBinding:
    prefix: -ace-format
- id: in_ann
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_dna
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_commands
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fathom

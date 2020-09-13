class: CommandLineTool
id: ../../../fathom.cwl
inputs:
- id: in_validate
  doc: '[-quiet]'
  type: boolean
  inputBinding:
    prefix: -validate
- id: in_gene_stats
  doc: '[-errors-ok -nucleotide -dinucleotide]'
  type: boolean
  inputBinding:
    prefix: -gene-stats
- id: in_categorize
  doc: ''
  type: long
  inputBinding:
    prefix: -categorize
- id: in_export
  doc: '[-plus -errors-ok]'
  type: long
  inputBinding:
    prefix: -export
- id: in_extract
  doc: ''
  type: string
  inputBinding:
    prefix: -extract
- id: in_exon_intron
  doc: ''
  type: boolean
  inputBinding:
    prefix: -exon-intron
- id: in_split
  doc: <-number <int> | -training <float> | -GC <float> | -repeat <float>>
  type: boolean
  inputBinding:
    prefix: -split
- id: in_ace_format
  doc: <-gene-method <string> [-dna -extra <string>]>
  type: boolean
  inputBinding:
    prefix: -ace-format
- id: in_compare_genes
  doc: '[-details]'
  type: string
  inputBinding:
    prefix: -compare-genes
- id: in_score_genes
  doc: '[-errors-ok]'
  type: string
  inputBinding:
    prefix: -score-genes
- id: in_filter_genes
  doc: ''
  type: string
  inputBinding:
    prefix: -filter-genes
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
cwlVersion: v1.1
baseCommand:
- fathom

class: CommandLineTool
id: peakranger_bcp.cwl
inputs:
- id: d
  doc: '[ --data ] arg               data file'
  type: boolean
  inputBinding:
    prefix: -d
- id: c
  doc: '[ --control ] arg            control file'
  type: boolean
  inputBinding:
    prefix: -c
- id: format
  doc: 'the format of the data file, can be one of :  bowtie, sam, bam and bed'
  type: string
  inputBinding:
    prefix: --format
- id: o
  doc: '[ --output ] arg             the output location'
  type: boolean
  inputBinding:
    prefix: -o
- id: report
  doc: generate html reports
  type: boolean
  inputBinding:
    prefix: --report
- id: plot_region
  doc: (=6000)       the length of the snapshort regions in the  report
  type: string
  inputBinding:
    prefix: --plot_region
- id: gene_an_not_file
  doc: the gene annotation file
  type: string
  inputBinding:
    prefix: --gene_annot_file
- id: p
  doc: '[ --pval ] arg (=0.0001)     p value cut-off'
  type: boolean
  inputBinding:
    prefix: -p
- id: win_size
  doc: (=500)           sliding window size
  type: string
  inputBinding:
    prefix: --win_size
- id: l
  doc: '[ --ext_length ] arg (=200)  read extension length'
  type: boolean
  inputBinding:
    prefix: -l
- id: verbose
  doc: show progress
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- peakranger
- bcp

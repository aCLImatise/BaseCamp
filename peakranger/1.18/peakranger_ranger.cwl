class: CommandLineTool
id: peakranger_ranger.cwl
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
- id: q
  doc: '[ --FDR ] arg (=0.01)        FDR cut-off'
  type: boolean
  inputBinding:
    prefix: -q
- id: l
  doc: '[ --ext_length ] arg (=100)  read extension length'
  type: boolean
  inputBinding:
    prefix: -l
- id: r
  doc: '[ --delta ] arg (=1)         sensitivity of the summit detector'
  type: boolean
  inputBinding:
    prefix: -r
- id: b
  doc: '[ --bandwidth ] arg (=99)    smoothing bandwidth'
  type: boolean
  inputBinding:
    prefix: -b
- id: pad
  doc: pad read coverage profile to avoid false  positive summmits
  type: boolean
  inputBinding:
    prefix: --pad
- id: t
  doc: '[ --thread ] arg (=7)        number of worker threads'
  type: boolean
  inputBinding:
    prefix: -t
- id: verbose
  doc: show progress
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- peakranger
- ranger

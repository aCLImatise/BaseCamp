class: CommandLineTool
id: gc_skew.cwl
inputs:
- id: f
  doc: '[F [F ...]]  fasta(s)'
  type: boolean
  inputBinding:
    prefix: -f
- id: l
  doc: minimum contig length (default = 10 x window)
  type: string
  inputBinding:
    prefix: -l
- id: w
  doc: window length (default = 1000)
  type: string
  inputBinding:
    prefix: -w
- id: s
  doc: slide length (default = 10)
  type: string
  inputBinding:
    prefix: -s
- id: single
  doc: combine multi-fasta sequences into single genome
  type: boolean
  inputBinding:
    prefix: --single
- id: no_plot
  doc: do not generate plots, print GC Skew to stdout
  type: boolean
  inputBinding:
    prefix: --no-plot
outputs: []
cwlVersion: v1.1
baseCommand:
- gc_skew

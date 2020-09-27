class: CommandLineTool
id: gc_skew.cwl
inputs:
- id: in__fastas
  doc: '[F [F ...]]  fasta(s)'
  type: boolean
  inputBinding:
    prefix: -f
- id: in_minimum_contig_length
  doc: minimum contig length (default = 10 x window)
  type: long
  inputBinding:
    prefix: -l
- id: in_window_length_default
  doc: window length (default = 1000)
  type: long
  inputBinding:
    prefix: -w
- id: in_slide_length_default
  doc: slide length (default = 10)
  type: long
  inputBinding:
    prefix: -s
- id: in_single
  doc: combine multi-fasta sequences into single genome
  type: boolean
  inputBinding:
    prefix: --single
- id: in_no_plot
  doc: do not generate plots, print GC Skew to stdout
  type: boolean
  inputBinding:
    prefix: --no-plot
- id: in_var_6
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gc_skew

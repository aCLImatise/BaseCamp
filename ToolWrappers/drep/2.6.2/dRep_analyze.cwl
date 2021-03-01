class: CommandLineTool
id: dRep_analyze.cwl
inputs:
- id: in_processors
  doc: 'threads (default: 6)'
  type: long?
  inputBinding:
    prefix: --processors
- id: in_debug
  doc: 'make extra debugging output (default: False)'
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_pl
  doc: "[PLOTS [PLOTS ...]], --plots [PLOTS [PLOTS ...]]\nPlots. Input 'all' or 'a'\
    \ to plot all\n1) Primary clustering dendrogram\n2) Secondary clustering dendrograms\n\
    3) Secondary clustering MDS\n4) Comparison scatterplots\n5) Cluster scoring plot\n\
    6) Winning genomes\n(default: None)\n"
  type: boolean?
  inputBinding:
    prefix: -pl
- id: in_plots
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dRep
- analyze

class: CommandLineTool
id: ../../../findKnownMotifs.pl.cwl
inputs:
- id: known_motif_file
  doc: '(Known motif file, default: /tmp/tmpyjsfxisi/share/homer-4.11-1/.//data/knownTFs/known.motifs)'
  type: string
  inputBinding:
    prefix: -m
- id: strand
  doc: <both|+|->
  type: boolean
  inputBinding:
    prefix: -strand
- id: stat
  doc: '(default: hypergeo)'
  type: string
  inputBinding:
    prefix: -stat
- id: p_value
  doc: '<#> (p-value cutoff, default: 0.01)'
  type: boolean
  inputBinding:
    prefix: -pvalue
- id: optimize
  doc: (Optimize motif degeneracy thresholds to maximize enrichment)
  type: boolean
  inputBinding:
    prefix: -optimize
- id: homer
  doc: (use original homer, default, for now...)
  type: boolean
  inputBinding:
    prefix: -homer
- id: homer_two
  doc: (use homer2)
  type: boolean
  inputBinding:
    prefix: -homer2
- id: number_use_homer
  doc: <#> (number of CPUs to use, homer2 only)
  type: boolean
  inputBinding:
    prefix: -p
- id: cache
  doc: '<#> (size in MB of statistics cache, default: 500)'
  type: boolean
  inputBinding:
    prefix: -cache
- id: bits
  doc: (scale logos by information content)
  type: boolean
  inputBinding:
    prefix: -bits
- id: dbview
  doc: (internal option)
  type: boolean
  inputBinding:
    prefix: -dbview
- id: seq_logo
  doc: (Use Weblogo/seqlogo/ghostscript, by default now generates SVG logos)
  type: boolean
  inputBinding:
    prefix: -seqlogo
- id: rna
  doc: (output RNA logos i.e. U instead of T)
  type: boolean
  inputBinding:
    prefix: -rna
- id: s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
- id: g
  doc: ''
  type: string
  inputBinding:
    prefix: -g
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- findKnownMotifs.pl

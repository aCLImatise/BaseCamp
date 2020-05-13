class: CommandLineTool
id: findKnownMotifs.pl.cwl
inputs:
- id: m
  doc: '(Known motif file, default: /tmp/tmp99omlp31/share/homer-4.10-0/.//data/knownTFs/known.motifs)'
  type: string
  inputBinding:
    prefix: -m
- id: strand
  doc: <both|+|->
  type: boolean
  inputBinding:
    prefix: -strand
- id: stat
  doc: '<hypergeo|binomial> (default: hypergeo)'
  type: boolean
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
- id: home_r2
  doc: (use homer2)
  type: boolean
  inputBinding:
    prefix: -homer2
- id: p
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
outputs: []
cwlVersion: v1.1
baseCommand:
- findKnownMotifs.pl

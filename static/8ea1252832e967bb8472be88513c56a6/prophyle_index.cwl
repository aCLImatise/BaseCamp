class: CommandLineTool
id: prophyle_index.cwl
inputs:
- id: g
  doc: directory with the library sequences [dir. of the first tree]
  type: string
  inputBinding:
    prefix: -g
- id: j
  doc: number of threads [auto (8)]
  type: long
  inputBinding:
    prefix: -j
- id: k
  doc: k-mer length [31]
  type: long
  inputBinding:
    prefix: -k
- id: l
  doc: log file [<index.dir>/log.txt]
  type: string
  inputBinding:
    prefix: -l
- id: s
  doc: rate of sampling of the tree [no sampling]
  type: double
  inputBinding:
    prefix: -s
- id: f
  doc: rewrite index files if they already exist
  type: boolean
  inputBinding:
    prefix: -F
- id: m
  doc: mask repeats/low complexity regions (using DustMasker)
  type: boolean
  inputBinding:
    prefix: -M
- id: p
  doc: do not add prefixes to node names when multiple trees are used
  type: boolean
  inputBinding:
    prefix: -P
- id: k
  doc: skip k-LCP construction (then restarted search only)
  type: boolean
  inputBinding:
    prefix: -K
- id: t
  doc: keep temporary files from k-mer propagation
  type: boolean
  inputBinding:
    prefix: -T
- id: a
  doc: autocomplete tree (names of internal nodes and FASTA paths)
  type: boolean
  inputBinding:
    prefix: -A
- id: c
  doc: '[STR [STR ...]]  advanced configuration (a JSON dictionary)'
  type: boolean
  inputBinding:
    prefix: -c
outputs: []
cwlVersion: v1.1
baseCommand:
- prophyle
- index

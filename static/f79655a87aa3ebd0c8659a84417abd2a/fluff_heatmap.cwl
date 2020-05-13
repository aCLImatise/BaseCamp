class: CommandLineTool
id: fluff_heatmap.cwl
inputs:
- id: f
  doc: BED file containing features
  type: File
  inputBinding:
    prefix: -f
- id: d
  doc: '[FILE [FILE ...]]  data files (reads in BAM or BED format)'
  type: boolean
  inputBinding:
    prefix: -d
- id: o
  doc: output file (type determined by extension)
  type: string
  inputBinding:
    prefix: -o
- id: c
  doc: kmeans, hierarchical or none
  type: string
  inputBinding:
    prefix: -C
- id: k
  doc: number of clusters
  type: long
  inputBinding:
    prefix: -k
- id: g
  doc: identify dynamics
  type: boolean
  inputBinding:
    prefix: -g
- id: m
  doc: 'cluster metric: Euclidean or Pearson (default: Euclidean)'
  type: string
  inputBinding:
    prefix: -M
- id: p
  doc: pick specific data files to use for clustering
  type: string
  inputBinding:
    prefix: -p
- id: s
  doc: random seed (int) to use for K-means clustering
  type: string
  inputBinding:
    prefix: -S
- id: r
  doc: normalize using RPKM instead of read counts
  type: boolean
  inputBinding:
    prefix: -r
- id: e
  doc: 'extend (in bp, default: 5000)'
  type: long
  inputBinding:
    prefix: -e
- id: b
  doc: 'bin size (default: 25)'
  type: long
  inputBinding:
    prefix: -B
- id: f
  doc: 'fragment length (default: read length)'
  type: string
  inputBinding:
    prefix: -F
- id: d
  doc: keep duplicate reads (removed by default)
  type: boolean
  inputBinding:
    prefix: -D
- id: r
  doc: keep reads with mapq 0 (removed by default)
  type: boolean
  inputBinding:
    prefix: -R
- id: m
  doc: merge mirrored clusters (only with kmeans and without -g option)
  type: boolean
  inputBinding:
    prefix: -m
- id: s
  doc: scale (absolute or percentage)
  type: string
  inputBinding:
    prefix: -s
- id: c
  doc: (S)            color(s) (name, colorbrewer profile or hex code), separate each
    color name by comma
  type: string
  inputBinding:
    prefix: -c
- id: b
  doc: (S)            background color(s) (name, colorbrewer profile or hex code)
  type: string
  inputBinding:
    prefix: -b
- id: t
  doc: 'text font size(default: 10)'
  type: string
  inputBinding:
    prefix: -T
- id: no_colorbar
  doc: don't show colorbars of each heatmap
  type: boolean
  inputBinding:
    prefix: --no-colorbar
- id: p
  doc: 'number of CPUs (default: 4)'
  type: long
  inputBinding:
    prefix: -P
outputs: []
cwlVersion: v1.1
baseCommand:
- fluff
- heatmap

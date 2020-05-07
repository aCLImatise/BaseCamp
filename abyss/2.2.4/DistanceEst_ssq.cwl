class: CommandLineTool
id: DistanceEst_ssq.cwl
inputs:
- id: hist
  doc: distribution of fragments size
  type: string
  inputBinding:
    position: 0
- id: pair
  doc: alignments between contigs
  type: string
  inputBinding:
    position: 1
- id: mind
  doc: minimum distance between contigs [-(k-1)]
  type: string
  inputBinding:
    prefix: --mind
- id: maxd
  doc: maximum distance between contigs
  type: string
  inputBinding:
    prefix: --maxd
- id: fr
  doc: force the orientation to forward-reverse
  type: boolean
  inputBinding:
    prefix: --fr
- id: rf
  doc: force the orientation to reverse-forward
  type: boolean
  inputBinding:
    prefix: --rf
- id: km_er
  doc: set --mind to -(k-1) bp
  type: string
  inputBinding:
    prefix: --kmer
- id: min_align
  doc: the minimal alignment size [1]
  type: string
  inputBinding:
    prefix: --min-align
- id: n_pairs
  doc: minimum number of pairs
  type: string
  inputBinding:
    prefix: --npairs
- id: seed_length
  doc: minimum length of the seed contigs
  type: string
  inputBinding:
    prefix: --seed-length
- id: min_mapq
  doc: ignore alignments with mapping quality less than this threshold [10]
  type: string
  inputBinding:
    prefix: --min-mapq
- id: out
  doc: write result to FILE
  type: File
  inputBinding:
    prefix: --out
- id: mle
  doc: use the MLE [default] (maximum likelihood estimator)
  type: boolean
  inputBinding:
    prefix: --mle
- id: median
  doc: use the difference of the population median and the sample median
  type: boolean
  inputBinding:
    prefix: --median
- id: mean
  doc: use the difference of the population mean and the sample mean
  type: boolean
  inputBinding:
    prefix: --mean
- id: dist
  doc: output the graph in dist format [default]
  type: boolean
  inputBinding:
    prefix: --dist
- id: dot
  doc: output the graph in GraphViz format
  type: boolean
  inputBinding:
    prefix: --dot
- id: gv
  doc: output the graph in GraphViz format
  type: boolean
  inputBinding:
    prefix: --gv
- id: gfa
  doc: output the graph in GFA2 format
  type: boolean
  inputBinding:
    prefix: --gfa
- id: gfa2
  doc: output the graph in GFA2 format
  type: boolean
  inputBinding:
    prefix: --gfa2
- id: threads
  doc: use N parallel threads [1]
  type: string
  inputBinding:
    prefix: --threads
- id: verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: db
  doc: specify path of database repository in FILE
  type: File
  inputBinding:
    prefix: --db
- id: library
  doc: specify library NAME for sqlite
  type: string
  inputBinding:
    prefix: --library
- id: strain
  doc: specify strain NAME for sqlite
  type: string
  inputBinding:
    prefix: --strain
- id: species
  doc: specify species NAME for sqlite
  type: string
  inputBinding:
    prefix: --species
outputs: []
cwlVersion: v1.1
baseCommand:
- DistanceEst-ssq

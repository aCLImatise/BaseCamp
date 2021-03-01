class: CommandLineTool
id: DistanceEst_ssq.cwl
inputs:
- id: in_mind
  doc: minimum distance between contigs [-(k-1)]
  type: long?
  inputBinding:
    prefix: --mind
- id: in_maxd
  doc: maximum distance between contigs
  type: string?
  inputBinding:
    prefix: --maxd
- id: in_fr
  doc: force the orientation to forward-reverse
  type: boolean?
  inputBinding:
    prefix: --fr
- id: in_rf
  doc: force the orientation to reverse-forward
  type: boolean?
  inputBinding:
    prefix: --rf
- id: in_km_er
  doc: set --mind to -(k-1) bp
  type: long?
  inputBinding:
    prefix: --kmer
- id: in_min_align
  doc: the minimal alignment size [1]
  type: long?
  inputBinding:
    prefix: --min-align
- id: in_n_pairs
  doc: minimum number of pairs
  type: long?
  inputBinding:
    prefix: --npairs
- id: in_seed_length
  doc: minimum length of the seed contigs
  type: long?
  inputBinding:
    prefix: --seed-length
- id: in_min_mapq
  doc: "ignore alignments with mapping quality\nless than this threshold [10]"
  type: long?
  inputBinding:
    prefix: --min-mapq
- id: in_out
  doc: write result to FILE
  type: File?
  inputBinding:
    prefix: --out
- id: in_mle
  doc: "use the MLE [default]\n(maximum likelihood estimator)"
  type: boolean?
  inputBinding:
    prefix: --mle
- id: in_median
  doc: "use the difference of the population median\nand the sample median"
  type: boolean?
  inputBinding:
    prefix: --median
- id: in_mean
  doc: "use the difference of the population mean\nand the sample mean"
  type: boolean?
  inputBinding:
    prefix: --mean
- id: in_dist
  doc: output the graph in dist format [default]
  type: boolean?
  inputBinding:
    prefix: --dist
- id: in_dot
  doc: output the graph in GraphViz format
  type: boolean?
  inputBinding:
    prefix: --dot
- id: in_gv
  doc: output the graph in GraphViz format
  type: boolean?
  inputBinding:
    prefix: --gv
- id: in_gfa
  doc: output the graph in GFA2 format
  type: boolean?
  inputBinding:
    prefix: --gfa
- id: in_gfa_two
  doc: output the graph in GFA2 format
  type: boolean?
  inputBinding:
    prefix: --gfa2
- id: in_threads
  doc: use N parallel threads [1]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_verbose
  doc: display verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_db
  doc: specify path of database repository in FILE
  type: File?
  inputBinding:
    prefix: --db
- id: in_library
  doc: specify library NAME for sqlite
  type: string?
  inputBinding:
    prefix: --library
- id: in_strain
  doc: specify strain NAME for sqlite
  type: string?
  inputBinding:
    prefix: --strain
- id: in_species
  doc: specify species NAME for sqlite
  type: string?
  inputBinding:
    prefix: --species
- id: in_hist
  doc: distribution of fragments size
  type: string
  inputBinding:
    position: 0
- id: in_pair
  doc: alignments between contigs
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- DistanceEst-ssq

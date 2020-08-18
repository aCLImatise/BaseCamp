class: CommandLineTool
id: ../../../gimme_cluster.cwl
inputs:
- id: compare_reverse_complements
  doc: Don't compare reverse complements of motifs
  type: boolean
  inputBinding:
    prefix: -s
- id: cluster_threshold
  doc: Cluster threshold
  type: string
  inputBinding:
    prefix: -t
- id: n_threads
  doc: Number of threads (default 12)
  type: long
  inputBinding:
    prefix: --nthreads
- id: h
  doc: ''
  type: boolean
  inputBinding:
    prefix: -h
- id: input_file
  doc: Inputfile (PFM format)
  type: string
  inputBinding:
    position: 0
- id: outdir
  doc: Name of output directory
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- gimme
- cluster

class: CommandLineTool
id: clusterAndSplitGenes.pl.cwl
inputs:
- id: verbose
  doc: 'threshold: minimal number of dependencies between two genes in order to force
    them into same cluster (default: 10)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: tx_format
  doc: commonfile holds transcript ids instead of gene ids the mapping given by the
    --genes file is used to map transcript ids to gene ids
  type: boolean
  inputBinding:
    prefix: --txformat
- id: chunksize
  doc: 'number of genes per chunk (default: 3000)'
  type: string
  inputBinding:
    prefix: --chunksize
- id: genes
  doc: gene set in GTF format that is split accoring to clustering
  type: string
  inputBinding:
    prefix: --genes
- id: genes_prefix
  doc: 'prefix for GTF output, can include directory (default: value of --genes)'
  type: string
  inputBinding:
    prefix: --genesprefix
- id: filter_map
  doc: 'prefix for short alignment output (default: value of --filtermap)'
  type: string
  inputBinding:
    prefix: --filtermap
- id: clusters
  doc: 'output file with clusters '
  type: string
  inputBinding:
    prefix: --clusters
- id: max_cluster_size
  doc: 'maximal size of cluster (default: 50)'
  type: string
  inputBinding:
    prefix: --maxclustersize
outputs: []
cwlVersion: v1.1
baseCommand:
- clusterAndSplitGenes.pl

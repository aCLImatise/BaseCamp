class: CommandLineTool
id: clusterAndSplitGenes.pl.cwl
inputs:
- id: in_verbose
  doc: "threshold: minimal number of dependencies between two genes\nin order to force\
    \ them into same cluster (default: 10)"
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_tx_format
  doc: "commonfile holds transcript ids instead of gene ids\nthe mapping given by\
    \ the --genes file is used to map transcript ids to gene ids"
  type: boolean?
  inputBinding:
    prefix: --txformat
- id: in_chunksize
  doc: 'number of genes per chunk (default: 3000)'
  type: long?
  inputBinding:
    prefix: --chunksize
- id: in_genes
  doc: gene set in GTF format that is split accoring to clustering
  type: string?
  inputBinding:
    prefix: --genes
- id: in_genes_prefix
  doc: 'prefix for GTF output, can include directory (default: value of --genes)'
  type: Directory?
  inputBinding:
    prefix: --genesprefix
- id: in_filter_map
  doc: 'prefix for short alignment output (default: value of --filtermap)'
  type: string?
  inputBinding:
    prefix: --filtermap
- id: in_clusters
  doc: output file with clusters
  type: File?
  inputBinding:
    prefix: --clusters
- id: in_max_cluster_size
  doc: 'maximal size of cluster (default: 50)'
  type: long?
  inputBinding:
    prefix: --maxclustersize
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_genes_prefix
  doc: 'prefix for GTF output, can include directory (default: value of --genes)'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_genes_prefix)
- id: out_clusters
  doc: output file with clusters
  type: File?
  outputBinding:
    glob: $(inputs.in_clusters)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0
cwlVersion: v1.1
baseCommand:
- clusterAndSplitGenes.pl

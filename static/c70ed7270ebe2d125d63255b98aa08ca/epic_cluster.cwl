class: CommandLineTool
id: epic_cluster.cwl
inputs:
- id: matrix
  doc: Matrix to run clustering algorithm on.
  type: string
  inputBinding:
    prefix: --matrix
- id: outfile
  doc: Where to store the cluster matrix.
  type: string
  inputBinding:
    prefix: --outfile
- id: bed_file
  doc: Where to store the bed file with info about each cluster.
  type: string
  inputBinding:
    prefix: --bedfile
- id: bigwig
  doc: Where to store the bigwig file that displays the number of enriched experiments
    in each bin.
  type: string
  inputBinding:
    prefix: --bigwig
- id: genome
  doc: Which genome the data is from (hg19, mm10 etc.). Only needed when --bigwig
    is used.
  type: string
  inputBinding:
    prefix: --genome
- id: trunk_diff
  doc: The difference from the max an area needs to be not considered a trunk.
  type: string
  inputBinding:
    prefix: --trunk-diff
- id: bin_size
  doc: The bin size used in the matrix file. Auto-inferred by default.
  type: string
  inputBinding:
    prefix: --bin-size
- id: distance_allowed
  doc: The max distance allowed before two bins are considered to belong to a separate
    region. By default set to be the bin-size.
  type: string
  inputBinding:
    prefix: --distance-allowed
- id: number_cores
  doc: 'Number of cpus to use. Can use at most one per chromosome. Default: 1.'
  type: string
  inputBinding:
    prefix: --number-cores
outputs: []
cwlVersion: v1.1
baseCommand:
- epic-cluster

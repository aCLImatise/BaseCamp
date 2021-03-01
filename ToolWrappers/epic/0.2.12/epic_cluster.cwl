class: CommandLineTool
id: epic_cluster.cwl
inputs:
- id: in_matrix
  doc: Matrix to run clustering algorithm on.
  type: string?
  inputBinding:
    prefix: --matrix
- id: in_outfile
  doc: Where to store the cluster matrix.
  type: string?
  inputBinding:
    prefix: --outfile
- id: in_bed_file
  doc: "Where to store the bed file with info about each\ncluster."
  type: File?
  inputBinding:
    prefix: --bedfile
- id: in_bigwig
  doc: "Where to store the bigwig file that displays the\nnumber of enriched experiments\
    \ in each bin."
  type: long?
  inputBinding:
    prefix: --bigwig
- id: in_genome
  doc: "Which genome the data is from (hg19, mm10 etc.). Only\nneeded when --bigwig\
    \ is used."
  type: long?
  inputBinding:
    prefix: --genome
- id: in_trunk_diff
  doc: "The difference from the max an area needs to be not\nconsidered a trunk."
  type: long?
  inputBinding:
    prefix: --trunk-diff
- id: in_bin_size
  doc: "The bin size used in the matrix file. Auto-inferred by\ndefault."
  type: long?
  inputBinding:
    prefix: --bin-size
- id: in_distance_allowed
  doc: "The max distance allowed before two bins are\nconsidered to belong to a separate\
    \ region. By default\nset to be the bin-size."
  type: long?
  inputBinding:
    prefix: --distance-allowed
- id: in_number_cores
  doc: "Number of cpus to use. Can use at most one per\nchromosome. Default: 1.\n"
  type: long?
  inputBinding:
    prefix: --number-cores
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- epic-cluster

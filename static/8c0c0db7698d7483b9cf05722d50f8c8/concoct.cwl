class: CommandLineTool
id: concoct.cwl
inputs:
- id: coverage_file
  doc: specify the coverage file, containing a table where each row correspond to
    a contig, and each column correspond to a sample. The values are the average coverage
    for this contig in that sample. All values are separated with tabs.
  type: string
  inputBinding:
    prefix: --coverage_file
- id: composition_file
  doc: specify the composition file, containing sequences in fasta format. It is named
    the composition file since it is used to calculate the kmer composition (the genomic
    signature) of each contig.
  type: string
  inputBinding:
    prefix: --composition_file
- id: clusters
  doc: specify maximal number of clusters for VGMM, default 400.
  type: string
  inputBinding:
    prefix: --clusters
- id: km_er_length
  doc: specify kmer length, default 4.
  type: string
  inputBinding:
    prefix: --kmer_length
- id: threads
  doc: Number of threads to use
  type: string
  inputBinding:
    prefix: --threads
- id: length_threshold
  doc: specify the sequence length threshold, contigs shorter than this value will
    not be included. Defaults to 1000.
  type: long
  inputBinding:
    prefix: --length_threshold
- id: read_length
  doc: specify read length for coverage, default 100
  type: string
  inputBinding:
    prefix: --read_length
- id: total_percentage_pc_a
  doc: The percentage of variance explained by the principal components for the combined
    data.
  type: string
  inputBinding:
    prefix: --total_percentage_pca
- id: basename
  doc: Specify the basename for files or directory where outputwill be placed. Path
    to existing directory or basenamewith a trailing '/' will be interpreted as a
    directory.If not provided, current directory will be used.
  type: string
  inputBinding:
    prefix: --basename
- id: seed
  doc: Specify an integer to use as seed for clustering. 0 gives a random seed, 1
    is the default seed and any other positive integer can be used. Other values give
    ArgumentTypeError.
  type: string
  inputBinding:
    prefix: --seed
- id: iterations
  doc: Specify maximum number of iterations for the VBGMM. Default value is 500
  type: string
  inputBinding:
    prefix: --iterations
- id: no_cov_normalization
  doc: By default the coverage is normalized with regards to samples, then normalized
    with regards of contigs and finally log transformed. By setting this flag you
    skip the normalization and only do log transorm of the coverage.
  type: boolean
  inputBinding:
    prefix: --no_cov_normalization
- id: no_total_coverage
  doc: By default, the total coverage is added as a new column in the coverage data
    matrix, independently of coverage normalization but previous to log transformation.
    Use this tag to escape this behaviour.
  type: boolean
  inputBinding:
    prefix: --no_total_coverage
- id: no_original_data
  doc: By default the original data is saved to disk. For big datasets, especially
    when a large k is used for compositional data, this file can become very large.
    Use this tag if you don't want to save the original data.
  type: boolean
  inputBinding:
    prefix: --no_original_data
- id: converge_out
  doc: Write convergence info to files.
  type: boolean
  inputBinding:
    prefix: --converge_out
- id: debug
  doc: Debug parameters.
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- concoct

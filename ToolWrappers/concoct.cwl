class: CommandLineTool
id: concoct.cwl
inputs:
- id: in_coverage_file
  doc: "specify the coverage file, containing a table where\neach row correspond to\
    \ a contig, and each column\ncorrespond to a sample. The values are the average\n\
    coverage for this contig in that sample. All values\nare separated with tabs."
  type: File
  inputBinding:
    prefix: --coverage_file
- id: in_composition_file
  doc: "specify the composition file, containing sequences in\nfasta format. It is\
    \ named the composition file since\nit is used to calculate the kmer composition\
    \ (the\ngenomic signature) of each contig."
  type: File
  inputBinding:
    prefix: --composition_file
- id: in_clusters
  doc: "specify maximal number of clusters for VGMM, default\n400."
  type: long
  inputBinding:
    prefix: --clusters
- id: in_km_er_length
  doc: specify kmer length, default 4.
  type: long
  inputBinding:
    prefix: --kmer_length
- id: in_threads
  doc: Number of threads to use
  type: long
  inputBinding:
    prefix: --threads
- id: in_length_threshold
  doc: "specify the sequence length threshold, contigs shorter\nthan this value will\
    \ not be included. Defaults to\n1000."
  type: long
  inputBinding:
    prefix: --length_threshold
- id: in_read_length
  doc: specify read length for coverage, default 100
  type: long
  inputBinding:
    prefix: --read_length
- id: in_total_percentage_pc_a
  doc: "The percentage of variance explained by the principal\ncomponents for the\
    \ combined data."
  type: string
  inputBinding:
    prefix: --total_percentage_pca
- id: in_basename
  doc: "Specify the basename for files or directory where\noutputwill be placed. Path\
    \ to existing directory or\nbasenamewith a trailing '/' will be interpreted as\
    \ a\ndirectory.If not provided, current directory will be\nused."
  type: File
  inputBinding:
    prefix: --basename
- id: in_seed
  doc: "Specify an integer to use as seed for clustering. 0\ngives a random seed,\
    \ 1 is the default seed and any\nother positive integer can be used. Other values\
    \ give\nArgumentTypeError."
  type: long
  inputBinding:
    prefix: --seed
- id: in_iterations
  doc: "Specify maximum number of iterations for the VBGMM.\nDefault value is 500"
  type: long
  inputBinding:
    prefix: --iterations
- id: in_no_cov_normalization
  doc: "By default the coverage is normalized with regards to\nsamples, then normalized\
    \ with regards of contigs and\nfinally log transformed. By setting this flag you\
    \ skip\nthe normalization and only do log transorm of the\ncoverage."
  type: boolean
  inputBinding:
    prefix: --no_cov_normalization
- id: in_no_total_coverage
  doc: "By default, the total coverage is added as a new\ncolumn in the coverage data\
    \ matrix, independently of\ncoverage normalization but previous to log\ntransformation.\
    \ Use this tag to escape this behaviour."
  type: boolean
  inputBinding:
    prefix: --no_total_coverage
- id: in_no_original_data
  doc: "By default the original data is saved to disk. For big\ndatasets, especially\
    \ when a large k is used for\ncompositional data, this file can become very large.\n\
    Use this tag if you don't want to save the original\ndata."
  type: boolean
  inputBinding:
    prefix: --no_original_data
- id: in_converge_out
  doc: Write convergence info to files.
  type: boolean
  inputBinding:
    prefix: --converge_out
- id: in_debug
  doc: Debug parameters.
  type: boolean
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- concoct

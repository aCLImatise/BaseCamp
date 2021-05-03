class: CommandLineTool
id: abyss_rresolver_short.cwl
inputs:
- id: in_bloom_size
  doc: read Bloom filter size. Unit suffixes 'K' (kilobytes), 'M' (megabytes), or
    'G' (gigabytes) may be used. [required]
  type: long?
  inputBinding:
    prefix: --bloom-size
- id: in_graph
  doc: write the contig adjacency graph to FILE. [required]
  type: File?
  inputBinding:
    prefix: --graph
- id: in_contigs
  doc: write the contigs to FILE. [required]
  type: File?
  inputBinding:
    prefix: --contigs
- id: in_threads
  doc: use N parallel threads [1]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_km_er
  doc: assembly k-mer size
  type: long?
  inputBinding:
    prefix: --kmer
- id: in_hist
  doc: write the algorithm histograms with the given prefix. Histograms are omitted
    if no prefix is given.
  type: string?
  inputBinding:
    prefix: --hist
- id: in_threshold
  doc: set path support threshold to N. [4]
  type: File?
  inputBinding:
    prefix: --threshold
- id: in_extract
  doc: extract N r-mers per read. [4]
  type: long?
  inputBinding:
    prefix: --extract
- id: in_min_tests
  doc: set minimum number of sliding window moves to N. Cannot be higher than 127.
    [20]
  type: long?
  inputBinding:
    prefix: --min-tests
- id: in_max_tests
  doc: set maximum number of sliding window moves to N. Cannot be higher than 127.
    [36]
  type: long?
  inputBinding:
    prefix: --max-tests
- id: in_branching
  doc: set maximum number of branching paths to N. [75]
  type: long?
  inputBinding:
    prefix: --branching
- id: in_r_mer
  doc: explicitly set r value (k value used by rresolver). The number of set r values
    should be equal to the number of read sizes.
  type: long?
  inputBinding:
    prefix: --rmer
- id: in_approx_factor
  doc: explicitly set coverage approximation factor.
  type: boolean?
  inputBinding:
    prefix: --approx-factor
- id: in_quality_threshold
  doc: minimum quality all bases in rmers should have, on average. [35] (UNUSED)
  type: long?
  inputBinding:
    prefix: --quality--threshold
- id: in_error_correction
  doc: enable correction of a 1bp error in kmers. [false]
  type: boolean?
  inputBinding:
    prefix: --error-correction
- id: in_supported
  doc: write supported paths to FILE.
  type: File?
  inputBinding:
    prefix: --supported
- id: in_unsupported
  doc: "write unsupported paths to FILE.\nUsed for path sequence quality check."
  type: File?
  inputBinding:
    prefix: --unsupported
- id: in_adj
  doc: output the graph in ADJ format [default]
  type: boolean?
  inputBinding:
    prefix: --adj
- id: in_as_qg
  doc: output the graph in ASQG format
  type: boolean?
  inputBinding:
    prefix: --asqg
- id: in_dot
  doc: output the graph in GraphViz format
  type: boolean?
  inputBinding:
    prefix: --dot
- id: in_gfa
  doc: output the graph in GFA1 format
  type: boolean?
  inputBinding:
    prefix: --gfa
- id: in_gfa_one
  doc: output the graph in GFA1 format
  type: boolean?
  inputBinding:
    prefix: --gfa1
- id: in_gfa_two
  doc: output the graph in GFA2 format
  type: boolean?
  inputBinding:
    prefix: --gfa2
- id: in_gv
  doc: output the graph in GraphViz format
  type: boolean?
  inputBinding:
    prefix: --gv
- id: in_sam
  doc: output the graph in SAM format
  type: boolean?
  inputBinding:
    prefix: --sam
- id: in_verbose
  doc: display verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/abyss:2.3.1--hd403d74_0
cwlVersion: v1.1
baseCommand:
- abyss-rresolver-short

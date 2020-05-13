class: CommandLineTool
id: SpydrPick.cwl
inputs:
- id: alignment_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: v
  doc: '[ --verbose ]                      Be verbose.'
  type: boolean
  inputBinding:
    prefix: -v
- id: mi_threshold
  doc: (=-1)              The MI threshold value. Experience  suggests that a value
    of 0.11 is often  reasonable. Zero indicates no threshold and negative values
    will trigger  auto-define heuristics.
  type: string
  inputBinding:
    prefix: --mi-threshold
- id: mi_values
  doc: (=0)                  Approximate number of MI values to  calculate from data
    (default=#samples*1 00).
  type: string
  inputBinding:
    prefix: --mi-values
- id: mi_pseudo_count
  doc: (=0.5)           The MI pseudocount value.
  type: string
  inputBinding:
    prefix: --mi-pseudocount
- id: mi_threshold_iterations
  doc: (=10)   Number of iterations for estimating  saving threshold.
  type: string
  inputBinding:
    prefix: --mi-threshold-iterations
- id: mi_threshold_pairs
  doc: (=0)         Number of sampled pairs for estimating  saving threshold (0=determine  automatically).
  type: string
  inputBinding:
    prefix: --mi-threshold-pairs
- id: ld_threshold
  doc: (=0)               Threshold distance for linkage  disequilibrium (LD).
  type: string
  inputBinding:
    prefix: --ld-threshold
- id: no_ar_acne
  doc: Skip ARACNE, only calculate MI.
  type: boolean
  inputBinding:
    prefix: --no-aracne
- id: t
  doc: '[ --threads ] arg (=-1)            Number of threads per MPI/shared memory
    node (-1=use all hardware threads that  the OS/environment exposes).'
  type: boolean
  inputBinding:
    prefix: -t
- id: alignment_file
  doc: The input alignment filename(s). When  two filenames are specified, only  inter-alignment
    links will be probed  for.
  type: string
  inputBinding:
    prefix: --alignmentfile
- id: include_list
  doc: Name of file containing list of loci to include in analysis.
  type: string
  inputBinding:
    prefix: --include-list
- id: exclude_list
  doc: Name of file containing list of loci to exclude from analysis.
  type: string
  inputBinding:
    prefix: --exclude-list
- id: mapping_list
  doc: Name of file containing loci mappings.
  type: string
  inputBinding:
    prefix: --mapping-list
- id: sample_list
  doc: The sample filter list input filename.
  type: string
  inputBinding:
    prefix: --sample-list
- id: sample_weights
  doc: Name of file containing sample weights.
  type: string
  inputBinding:
    prefix: --sample-weights
- id: input_indexing_base
  doc: (=1)        Base index for input.
  type: string
  inputBinding:
    prefix: --input-indexing-base
- id: no_filter_alignment
  doc: Do not filter alignment columns by  applying MAF and GAP thresholds.
  type: boolean
  inputBinding:
    prefix: --no-filter-alignment
- id: maf_threshold
  doc: (=0.01)           Minor state frequency threshold. Loci  with less than 2 states
    above threshold are removed from alignment.
  type: string
  inputBinding:
    prefix: --maf-threshold
- id: gap_threshold
  doc: (=0.14999999999999999) Gap frequency threshold. Positions with a gap frequency
    above the threshold are excluded from the pair-analysis.
  type: string
  inputBinding:
    prefix: --gap-threshold
- id: no_sample_reweighting
  doc: Turn sample reweighting off, i.e. do  not try to correct for population  structure.
  type: boolean
  inputBinding:
    prefix: --no-sample-reweighting
- id: sample_reweighting_threshold
  doc: (=0.90000000000000002) Fraction of identical positions  required for two samples
    to be  considered identical.
  type: string
  inputBinding:
    prefix: --sample-reweighting-threshold
- id: rescale_sample_weights
  doc: Rescale sample weights so that  n(effective) == n.
  type: boolean
  inputBinding:
    prefix: --rescale-sample-weights
- id: output_state_frequencies
  doc: Write column-wise state frequencies to  file.
  type: boolean
  inputBinding:
    prefix: --output-state-frequencies
- id: output_sample_weights
  doc: Output sample weights.
  type: boolean
  inputBinding:
    prefix: --output-sample-weights
- id: output_sample_distance_matrix
  doc: Output triangular sample-sample Hamming distance matrix.
  type: boolean
  inputBinding:
    prefix: --output-sample-distance-matrix
- id: output_indexing_base
  doc: (=1)       Base index for output.
  type: string
  inputBinding:
    prefix: --output-indexing-base
- id: output_alignment
  doc: Write alignment to file.
  type: boolean
  inputBinding:
    prefix: --output-alignment
- id: output_filtered_alignment
  doc: Write filtered alignment to file.
  type: boolean
  inputBinding:
    prefix: --output-filtered-alignment
- id: genome_size
  doc: 'Genome size, if different from input.  Default = 0: detect size from input.'
  type: string
  inputBinding:
    prefix: --genome-size
- id: linear_genome
  doc: Assume linear genome in distance  calculations.
  type: boolean
  inputBinding:
    prefix: --linear-genome
- id: begin
  doc: (=1)                      The first locus index to work on. Used  to define
    a range.
  type: string
  inputBinding:
    prefix: --begin
- id: end
  doc: (=-1)                       The last locus index to work on (-1=end of input).
    Used to define a range.
  type: string
  inputBinding:
    prefix: --end
- id: o
  doc: '[ --aracne-outputfile ] arg (=aracne.out) The ARACNE output filename. This
    is a  binary file for "plot.r".'
  type: boolean
  inputBinding:
    prefix: -o
- id: ar_acne_edge_threshold
  doc: (=2.2204460492503131e-16) Equality tolerance threshold. Edges  differing by
    less than this value are  considered equal in strength.
  type: string
  inputBinding:
    prefix: --aracne-edge-threshold
- id: ar_acne_block_size
  doc: (=16384)      Block size for graph processing.
  type: string
  inputBinding:
    prefix: --aracne-block-size
- id: ar_acne_node_grouping_size
  doc: (=16) Grouping size for node processing.
  type: string
  inputBinding:
    prefix: --aracne-node-grouping-size
outputs: []
cwlVersion: v1.1
baseCommand:
- SpydrPick

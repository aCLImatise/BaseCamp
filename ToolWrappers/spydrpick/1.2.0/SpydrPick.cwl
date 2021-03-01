class: CommandLineTool
id: SpydrPick.cwl
inputs:
- id: in__be_verbose
  doc: '[ --verbose ]                      Be verbose.'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_mi_threshold
  doc: "(=-1)              The MI threshold value. Experience\nsuggests that a value\
    \ of 0.11 is often\nreasonable. Zero indicates no threshold\nand negative values\
    \ will trigger\nauto-define heuristics."
  type: double?
  inputBinding:
    prefix: --mi-threshold
- id: in_mi_values
  doc: "(=0)                  Approximate number of MI values to\ncalculate from data\
    \ (default=#samples*1\n00)."
  type: long?
  inputBinding:
    prefix: --mi-values
- id: in_mi_pseudo_count
  doc: (=0.5)           The MI pseudocount value.
  type: double?
  inputBinding:
    prefix: --mi-pseudocount
- id: in_mi_threshold_iterations
  doc: "(=10)   Number of iterations for estimating\nsaving threshold."
  type: long?
  inputBinding:
    prefix: --mi-threshold-iterations
- id: in_mi_threshold_pairs
  doc: "(=0)         Number of sampled pairs for estimating\nsaving threshold (0=determine\n\
    automatically)."
  type: long?
  inputBinding:
    prefix: --mi-threshold-pairs
- id: in_ld_threshold
  doc: "(=0)               Threshold distance for linkage\ndisequilibrium (LD)."
  type: long?
  inputBinding:
    prefix: --ld-threshold
- id: in_no_ar_acne
  doc: Skip ARACNE, only calculate MI.
  type: boolean?
  inputBinding:
    prefix: --no-aracne
- id: in_arg_number_threads
  doc: "[ --threads ] arg (=-1)            Number of threads per MPI/shared memory\n\
    node (-1=use all hardware threads that\nthe OS/environment exposes)."
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_alignment_file
  doc: "The input alignment filename(s). When\ntwo filenames are specified, only\n\
    inter-alignment links will be probed\nfor."
  type: File?
  inputBinding:
    prefix: --alignmentfile
- id: in_include_list
  doc: "Name of file containing list of loci to\ninclude in analysis."
  type: File?
  inputBinding:
    prefix: --include-list
- id: in_exclude_list
  doc: "Name of file containing list of loci to\nexclude from analysis."
  type: File?
  inputBinding:
    prefix: --exclude-list
- id: in_mapping_list
  doc: Name of file containing loci mappings.
  type: File?
  inputBinding:
    prefix: --mapping-list
- id: in_sample_list
  doc: The sample filter list input filename.
  type: File?
  inputBinding:
    prefix: --sample-list
- id: in_sample_weights
  doc: Name of file containing sample weights.
  type: File?
  inputBinding:
    prefix: --sample-weights
- id: in_input_indexing_base
  doc: (=1)        Base index for input.
  type: long?
  inputBinding:
    prefix: --input-indexing-base
- id: in_no_filter_alignment
  doc: "Do not filter alignment columns by\napplying MAF and GAP thresholds."
  type: boolean?
  inputBinding:
    prefix: --no-filter-alignment
- id: in_maf_threshold
  doc: "(=0.01)           Minor state frequency threshold. Loci\nwith less than 2\
    \ states above threshold\nare removed from alignment."
  type: double?
  inputBinding:
    prefix: --maf-threshold
- id: in_gap_threshold
  doc: "(=0.14999999999999999)\nGap frequency threshold. Positions with\na gap frequency\
    \ above the threshold are\nexcluded from the pair-analysis."
  type: double?
  inputBinding:
    prefix: --gap-threshold
- id: in_no_sample_reweighting
  doc: "Turn sample reweighting off, i.e. do\nnot try to correct for population\n\
    structure."
  type: boolean?
  inputBinding:
    prefix: --no-sample-reweighting
- id: in_sample_reweighting_threshold
  doc: "(=0.90000000000000002)\nFraction of identical positions\nrequired for two\
    \ samples to be\nconsidered identical."
  type: double?
  inputBinding:
    prefix: --sample-reweighting-threshold
- id: in_rescale_sample_weights
  doc: "Rescale sample weights so that\nn(effective) == n."
  type: boolean?
  inputBinding:
    prefix: --rescale-sample-weights
- id: in_output_state_frequencies
  doc: Write column-wise state frequencies to
  type: boolean?
  inputBinding:
    prefix: --output-state-frequencies
- id: in_output_sample_distance_matrix
  doc: "Output triangular sample-sample Hamming\ndistance matrix."
  type: boolean?
  inputBinding:
    prefix: --output-sample-distance-matrix
- id: in_output_indexing_base
  doc: (=1)       Base index for output.
  type: long?
  inputBinding:
    prefix: --output-indexing-base
- id: in_output_alignment
  doc: Write alignment to file.
  type: boolean?
  inputBinding:
    prefix: --output-alignment
- id: in_output_filtered_alignment
  doc: Write filtered alignment to file.
  type: boolean?
  inputBinding:
    prefix: --output-filtered-alignment
- id: in_genome_size
  doc: "Genome size, if different from input.\nDefault = 0: detect size from input."
  type: long?
  inputBinding:
    prefix: --genome-size
- id: in_linear_genome
  doc: Assume linear genome in distance
  type: boolean?
  inputBinding:
    prefix: --linear-genome
- id: in_end
  doc: "(=-1)                       The last locus index to work on (-1=end\nof input).\
    \ Used to define a range."
  type: long?
  inputBinding:
    prefix: --end
- id: in_arg_aracneoutthe_aracne
  doc: "[ --aracne-outputfile ] arg (=aracne.out)\nThe ARACNE output filename. This\
    \ is a\nbinary file for \"plot.r\"."
  type: File?
  inputBinding:
    prefix: -o
- id: in_ar_acne_edge_threshold
  doc: "(=2.2204460492503131e-16)\nEquality tolerance threshold. Edges\ndiffering\
    \ by less than this value are\nconsidered equal in strength."
  type: double?
  inputBinding:
    prefix: --aracne-edge-threshold
- id: in_ar_acne_block_size
  doc: (=16384)      Block size for graph processing.
  type: long?
  inputBinding:
    prefix: --aracne-block-size
- id: in_ar_acne_node_grouping_size
  doc: (=16) Grouping size for node processing.
  type: long?
  inputBinding:
    prefix: --aracne-node-grouping-size
- id: in_file_dot
  doc: --output-sample-weights               Output sample weights.
  type: File
  inputBinding:
    position: 0
- id: in_calculations_dot
  doc: '--begin arg (=1)                      The first locus index to work on. Used '
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_aracneoutthe_aracne
  doc: "[ --aracne-outputfile ] arg (=aracne.out)\nThe ARACNE output filename. This\
    \ is a\nbinary file for \"plot.r\"."
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_aracneoutthe_aracne)
hints: []
cwlVersion: v1.1
baseCommand:
- SpydrPick

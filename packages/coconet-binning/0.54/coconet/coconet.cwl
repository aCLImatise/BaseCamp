class: CommandLineTool
id: coconet.cwl
inputs:
- id: in_fragment_length
  doc: 'Length of contig fragments in bp (default: 1024)'
  type: long?
  inputBinding:
    prefix: --fragment-length
- id: in_threads
  doc: 'Number of threads (default: 20)'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_fast_a
  doc: "Path to your assembly file (fasta formatted) (default:\nNone)"
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_coverage
  doc: "List of paths to your coverage files (bam formatted)\n(default: None)"
  type: string[]
  inputBinding:
    prefix: --coverage
- id: in_output
  doc: 'Path to output directory (default: output)'
  type: File?
  inputBinding:
    prefix: --output
- id: in_min_ctg_len
  doc: "Minimum contig length. Default (-1) is twice the\nfragment length (default:\
    \ -1)"
  type: long?
  inputBinding:
    prefix: --min-ctg-len
- id: in_min_prevalence
  doc: "Minimum contig prevalence for binning. Contig with\nless that value are filtered\
    \ out. (default: 2)"
  type: long?
  inputBinding:
    prefix: --min-prevalence
- id: in_min_mapping_quality
  doc: "Minimum mapping quality for bam filtering (default:\n50)"
  type: long?
  inputBinding:
    prefix: --min-mapping-quality
- id: in_flag
  doc: 'am Flag for bam filtering (default: 3596)'
  type: long?
  inputBinding:
    prefix: --flag
- id: in_fl_range
  doc: "FL_RANGE\nOnly allow for paired alignments with spacing within\nthis range\
    \ (default: [])"
  type: string?
  inputBinding:
    prefix: --fl-range
- id: in_tmp_dir
  doc: "Temporary directory for bam processing (default:\n./tmp42)"
  type: Directory?
  inputBinding:
    prefix: --tmp-dir
- id: in_fragment_step
  doc: 'Fragments spacing (default: 128)'
  type: long?
  inputBinding:
    prefix: --fragment-step
- id: in_test_ratio
  doc: 'Ratio for train / test split (default: 0.1)'
  type: double?
  inputBinding:
    prefix: --test-ratio
- id: in_n_train
  doc: 'Number of training examples (default: 1000000)'
  type: long?
  inputBinding:
    prefix: --n-train
- id: in_n_test
  doc: 'Number of test examples (default: 10000)'
  type: long?
  inputBinding:
    prefix: --n-test
- id: in_batch_size
  doc: 'Batch size for training (default: 256)'
  type: long?
  inputBinding:
    prefix: --batch-size
- id: in_learning_rate
  doc: 'Learning rate for gradient descent (default: 0.0001)'
  type: double?
  inputBinding:
    prefix: --learning-rate
- id: in_load_batch
  doc: "Number of coverage batch to load in memory. Consider\nlowering this value\
    \ if your RAM is limited. (default:\n200)"
  type: long?
  inputBinding:
    prefix: --load-batch
- id: in_compo_neurons
  doc: "COMPO_NEURONS\nNumber of neurons for the composition dense layers\n(x2) (default:\
    \ [64, 32])"
  type: long?
  inputBinding:
    prefix: --compo-neurons
- id: in_cover_neurons
  doc: "COVER_NEURONS\nNumber of neurons for the coverage dense layers (x2)\n(default:\
    \ [64, 32])"
  type: long?
  inputBinding:
    prefix: --cover-neurons
- id: in_cover_filters
  doc: "Number of filters for convolution layer of coverage\nnetwork. (default: 32)"
  type: long?
  inputBinding:
    prefix: --cover-filters
- id: in_cover_kernel
  doc: "Kernel size for convolution layer of coverage network.\n(default: 7)"
  type: long?
  inputBinding:
    prefix: --cover-kernel
- id: in_cover_stride
  doc: "Convolution stride for convolution layer of coverage\nnetwork. (default: 3)"
  type: long?
  inputBinding:
    prefix: --cover-stride
- id: in_merge_neurons
  doc: "Number of neurons for the merging layer (x1) (default:\n32)"
  type: long?
  inputBinding:
    prefix: --merge-neurons
- id: in_norm
  doc: "Normalize the k-mer occurrences to frequencies\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --norm
- id: in_km_er
  doc: 'k-mer size for composition vector (default: 4)'
  type: long?
  inputBinding:
    prefix: --kmer
- id: in_no_rc
  doc: "Do not add the reverse complement k-mer occurrences to\nthe composition vector.\
    \ (default: False)"
  type: boolean?
  inputBinding:
    prefix: --no-rc
- id: in_w_size
  doc: "Smoothing window size for coverage vector (default:\n64)"
  type: long?
  inputBinding:
    prefix: --wsize
- id: in_w_step
  doc: 'Subsampling step for coverage vector (default: 32)'
  type: long?
  inputBinding:
    prefix: --wstep
- id: in_n_frags
  doc: "Number of fragments to split the contigs for the\nclustering phase (default:\
    \ 30)"
  type: long?
  inputBinding:
    prefix: --n-frags
- id: in_max_neighbors
  doc: "Maximum number of neighbors to consider to compute the\nadjacency matrix.\
    \ (default: 100)"
  type: long?
  inputBinding:
    prefix: --max-neighbors
- id: in_theta
  doc: "Minimum percent of edges between two contigs to form\nan edge between them\
    \ (default: 0.8)"
  type: double?
  inputBinding:
    prefix: --theta
- id: in_gamma_one
  doc: "CPM optimization value for the first run of the Leiden\nclustering (default:\
    \ 0.1)"
  type: long?
  inputBinding:
    prefix: --gamma1
- id: in_gamma_two
  doc: "CPM optimization value for the second run of the\nLeiden clustering (default:\
    \ 0.75)\n"
  type: long?
  inputBinding:
    prefix: --gamma2
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'Path to output directory (default: output)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/coconet-binning:0.54--py_0
cwlVersion: v1.1
baseCommand:
- coconet

class: CommandLineTool
id: coconet_learn.cwl
inputs:
- id: in_fast_a
  doc: "Path to your assembly file (fasta formatted) (default:\nNone)"
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_h_five
  doc: "Experimental: coverage in hdf5 format (keys are\ncontigs, values are (sample,\
    \ contig_len) ndarrays\n(default: None)"
  type: long?
  inputBinding:
    prefix: --h5
- id: in_output
  doc: 'Path to output directory (default: output)'
  type: File?
  inputBinding:
    prefix: --output
- id: in_threads
  doc: 'Number of threads (default: 5)'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_debug
  doc: 'Print debugging statements (default: 20)'
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_quiet
  doc: 'Less verbose (default: None)'
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_silent
  doc: 'Only error messages (default: None)'
  type: boolean?
  inputBinding:
    prefix: --silent
- id: in_continue
  doc: "Start from last checkpoint. The output directory needs\nto be the same. (default:\
    \ False)"
  type: Directory?
  inputBinding:
    prefix: --continue
- id: in_fragment_length
  doc: "Length of contig fragments in bp. Default is half the\nminimum contig length.\
    \ (default: -1)"
  type: long?
  inputBinding:
    prefix: --fragment-length
- id: in_features
  doc: "[{coverage,composition} ...]\nFeatures for binning (composition, coverage,\
    \ or both)\n(default: ['coverage', 'composition'])"
  type: string?
  inputBinding:
    prefix: --features
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
  doc: 'Maximum number of training examples (default: 4000000)'
  type: long?
  inputBinding:
    prefix: --n-train
- id: in_n_test
  doc: 'Number of test examples (default: 10000)'
  type: long?
  inputBinding:
    prefix: --n-test
- id: in_learning_rate
  doc: 'Learning rate for gradient descent (default: 0.001)'
  type: double?
  inputBinding:
    prefix: --learning-rate
- id: in_batch_size
  doc: 'Batch size for training (default: 256)'
  type: long?
  inputBinding:
    prefix: --batch-size
- id: in_test_batch
  doc: Run test every 400 batches
  type: long?
  inputBinding:
    prefix: --test-batch
- id: in_patience
  doc: "Early stopping if test accuracy does not improve for 5\nconsecutive tests"
  type: long?
  inputBinding:
    prefix: --patience
- id: in_load_batch
  doc: "Number of coverage batch to load in memory. Consider\nlowering this value\
    \ if your RAM is limited. (default:\n100)"
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
  doc: "Number of filters for convolution layer of coverage\nnetwork. (default: 16)"
  type: long?
  inputBinding:
    prefix: --cover-filters
- id: in_cover_kernel
  doc: "Kernel size for convolution layer of coverage network.\n(default: 4)"
  type: long?
  inputBinding:
    prefix: --cover-kernel
- id: in_cover_stride
  doc: "Convolution stride for convolution layer of coverage\nnetwork. (default: 2)"
  type: long?
  inputBinding:
    prefix: --cover-stride
- id: in_merge_neurons
  doc: "Number of neurons for the merging layer (x1) (default:\n32)"
  type: long?
  inputBinding:
    prefix: --merge-neurons
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
    \ 30)\n"
  type: long?
  inputBinding:
    prefix: --n-frags
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'Path to output directory (default: output)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_continue
  doc: "Start from last checkpoint. The output directory needs\nto be the same. (default:\
    \ False)"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_continue)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/coconet-binning:1.1.0--py_0
cwlVersion: v1.1
baseCommand:
- coconet
- learn

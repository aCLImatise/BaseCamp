class: CommandLineTool
id: strainphlan.py.cwl
inputs:
- id: in_ifn_samples
  doc: "The list of sample files (space separated).The\nwildcard can also be used."
  type: string[]
  inputBinding:
    prefix: --ifn_samples
- id: in_ifn_second_samples
  doc: "The list of second sample files (space separated).The\nwildcard can also be\
    \ used. Note that only the markers\nfound in the samples or reference genomes\
    \ specified by\n--ifn_samples or --ifn_representative_sample or\n--ifn_ref_genomes\
    \ with\nadd_reference_genomes_as_second_samples=False will be\nused to build the\
    \ phylogenetic trees."
  type: string[]
  inputBinding:
    prefix: --ifn_second_samples
- id: in_ifn_representative_sample
  doc: "The representative sample. The marker list of each\nspecies extracted from\
    \ this sample will be used for\nall other samples."
  type: string?
  inputBinding:
    prefix: --ifn_representative_sample
- id: in_index
  doc: "Specify the id of the database version to use. If the\ndatabase files are\
    \ not found on the local MetaPhlAn2\ninstallation they will be automatically downloaded"
  type: long?
  inputBinding:
    prefix: --index
- id: in_mpa_pkl
  doc: The database of metaphlan2.py
  type: long?
  inputBinding:
    prefix: --mpa_pkl
- id: in_output_dir
  doc: The output directory.
  type: Directory?
  inputBinding:
    prefix: --output_dir
- id: in_ifn_markers
  doc: The marker file in fasta format.
  type: File?
  inputBinding:
    prefix: --ifn_markers
- id: in_nprocs_main
  doc: "The number of processors are used for the main\nthreads. Default 1."
  type: long?
  inputBinding:
    prefix: --nprocs_main
- id: in_nprocs_load_samples
  doc: "The number of processors are used for loading samples.\nDefault nprocs_main."
  type: long?
  inputBinding:
    prefix: --nprocs_load_samples
- id: in_nprocs_align_clean
  doc: "The number of processors are used for aligning and\ncleaning markers. Default\
    \ nprocs_main."
  type: long?
  inputBinding:
    prefix: --nprocs_align_clean
- id: in_nprocs_ra_xml
  doc: "The number of processors are used for running raxml.\nDefault nprocs_main."
  type: long?
  inputBinding:
    prefix: --nprocs_raxml
- id: in_bootstrap_ra_xml
  doc: "The number of runs for bootstraping when building the\ntree. Default 0."
  type: long?
  inputBinding:
    prefix: --bootstrap_raxml
- id: in_ifn_ref_genomes
  doc: "The reference genome file names. They are separated by\nspaces."
  type: string[]
  inputBinding:
    prefix: --ifn_ref_genomes
- id: in_add_reference_genomes_as_second_samples
  doc: "Add reference genomes as second samples. Default\n\"False\". Note that only\
    \ the markers found in the\nsamples or reference genomes specified by\n--ifn_samples\
    \ or --ifn_representative_sample or\n--ifn_ref_genomes with\nadd_reference_genomes_as_second_samples=False\
    \ will be\nused to build the phylogenetic trees."
  type: boolean?
  inputBinding:
    prefix: --add_reference_genomes_as_second_samples
- id: in_n_in_marker
  doc: "The consensus markers with the rate of N nucleotides\ngreater than this threshold\
    \ are removed. Default 0.2."
  type: double?
  inputBinding:
    prefix: --N_in_marker
- id: in_marker_strip_length
  doc: "The number of nucleotides will be deleted from each of\ntwo ends of a marker.\
    \ Default 50."
  type: long?
  inputBinding:
    prefix: --marker_strip_length
- id: in_marker_in_clade
  doc: "In each sample, the clades with the rate of present\nmarkers less than this\
    \ threshold are removed. Default\n0.8."
  type: double?
  inputBinding:
    prefix: --marker_in_clade
- id: in_second_marker_in_clade
  doc: "In each sample/reference genomes specified by\n--ifn_second_samples, or\n\
    --add_reference_genomes_as_second_samples, the clades\nwith the rate of present\
    \ markers less than this\nthreshold are removed. Default 0.8."
  type: double?
  inputBinding:
    prefix: --second_marker_in_clade
- id: in_sample_in_clade
  doc: "Only clades present in at least sample_in_clade\nsamples are kept. Default\
    \ 2."
  type: long?
  inputBinding:
    prefix: --sample_in_clade
- id: in_sample_in_marker
  doc: "If the percentage of samples that a marker present in\nis less than this threshold,\
    \ that marker is removed.\nDefault 0.8."
  type: double?
  inputBinding:
    prefix: --sample_in_marker
- id: in_gap_in_trailing_col
  doc: "If the number of the trailing nucleotide columns in\naligned markers with\
    \ the percentage of gaps greater\nthan gap_in_trailing_col is less than\ngap_trailing_col_limit,\
    \ these columns will be removed.\nDefault 0.2."
  type: long?
  inputBinding:
    prefix: --gap_in_trailing_col
- id: in_gap_trailing_col_limit
  doc: "If the number of the trailing nucleotide columns in\naligned markers with\
    \ the percentage of gaps greater\nthan gap_in_trailing_col is less than\ngap_trailing_col_limit,\
    \ these columns will be removed.\nDefault 101."
  type: long?
  inputBinding:
    prefix: --gap_trailing_col_limit
- id: in_gap_in_internal_col
  doc: "The internal nucleotide columns in aligned markers\nwith the percentage of\
    \ gaps greater than\ngap_in_internal_col will be removed. Default 0.3."
  type: double?
  inputBinding:
    prefix: --gap_in_internal_col
- id: in_gap_in_sample
  doc: "The samples with full sequences from all markers and\nhaving the percentage\
    \ of gaps greater than this\nthreshold will be removed. Default 0.2."
  type: double?
  inputBinding:
    prefix: --gap_in_sample
- id: in_second_gap_in_sample
  doc: "The samples specified by --ifn_second_samples with\nfull sequences from all\
    \ markers and having the\npercentage of gaps greater than this threshold will\
    \ be\nremoved. Default 0.2."
  type: double?
  inputBinding:
    prefix: --second_gap_in_sample
- id: in_n_col
  doc: "In aligned markers, if the percentage of nucleotide\ncolumns containing more\
    \ than N_count Ns less than this\nthreshold, these columns will be removed. Default\
    \ 0.8."
  type: double?
  inputBinding:
    prefix: --N_col
- id: in_n_count
  doc: "In aligned markers, if the percentage of nucleotide\ncolumns containing more\
    \ than N_count Ns less than\nN_col threshold, these columns will be removed.\n\
    Default 0."
  type: long?
  inputBinding:
    prefix: --N_count
- id: in_long_gap_length
  doc: "In each concatenated sequence of a sample, sequential\ngap positions is a\
    \ gap group. A gap group with length\ngreater than this threshold is considered\
    \ as a long\ngap group. If the ratio between the number of unique\npositions in\
    \ all long gap groups and the concatenated\nsequence length is less than long_gap_percentage,\n\
    these positions will be removed from all concatenated\nsequences. Default 2."
  type: long?
  inputBinding:
    prefix: --long_gap_length
- id: in_long_gap_percentage
  doc: "Combining this threshold with long_gap_length to\nremoved long gaps. Default\
    \ 0.8."
  type: double?
  inputBinding:
    prefix: --long_gap_percentage
- id: in_p_value
  doc: The p_value to reject a non-polymorphic site.Default
  type: string?
  inputBinding:
    prefix: --p_value
- id: in_marker_list_fn
  doc: "The file name containing the list of considered\nmarkers. The other markers\
    \ will be discarded. Default\n\"None\"."
  type: File?
  inputBinding:
    prefix: --marker_list_fn
- id: in_print_clades_only
  doc: "Only print the potential clades and stop without\nbuilding any tree. This\
    \ option is useful when you want\nto check quickly all possible clades and rerun\
    \ only\nfor some specific ones. Default \"False\"."
  type: boolean?
  inputBinding:
    prefix: --print_clades_only
- id: in_alignment_program
  doc: The alignment program. Default "muscle".
  type: string?
  inputBinding:
    prefix: --alignment_program
- id: in_relaxed_parameters
  doc: "Set marker_in_clade=0.5, sample_in_marker=0.5,\nN_in_marker=0.5, gap_in_sample=0.5.\
    \ Default \"False\"."
  type: boolean?
  inputBinding:
    prefix: --relaxed_parameters
- id: in_relaxed_parameters_two
  doc: "Set marker_in_clade=0.2, sample_in_marker=0.2,\nN_in_marker=0.8, gap_in_sample=0.8.\
    \ Default \"False\"."
  type: boolean?
  inputBinding:
    prefix: --relaxed_parameters2
- id: in_relaxed_parameters_three
  doc: "Set gap_in_trailing_col=0.9, gap_in_internal_col=0.9,\ngap_in_sample=0.9,\
    \ second_gap_in_sample=0.5,\nsample_in_marker=0.1, marker_in_clade=0.1,\nsecond_marker_in_clade=0.1,\
    \ Default \"False\"."
  type: boolean?
  inputBinding:
    prefix: --relaxed_parameters3
- id: in_keep_alignment_files
  doc: "Keep the alignment files of all markers before\ncleaning step."
  type: boolean?
  inputBinding:
    prefix: --keep_alignment_files
- id: in_keep_full_alignment_files
  doc: "Keep the alignment files of all markers before\ntruncating the starting and\
    \ ending parts, and cleaning\nstep. This is equivalent to --keep_alignment_files\n\
    --marker_strip_length 0"
  type: boolean?
  inputBinding:
    prefix: --keep_full_alignment_files
- id: in_save_sample_two_full_freq
  doc: "Save sample2fullfreq to a msgpack file\nsample2fullfreq.msgpack."
  type: boolean?
  inputBinding:
    prefix: --save_sample2fullfreq
- id: in_use_threads
  doc: Use multithreading. Default "Use multiprocessing".
  type: boolean?
  inputBinding:
    prefix: --use_threads
- id: in_zero_dot_zero_five_dot
  doc: --clades CLADES [CLADES ...]
  type: double
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: The output directory.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- strainphlan.py

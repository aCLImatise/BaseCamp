class: CommandLineTool
id: strainphlan.py.cwl
inputs:
- id: ifn_samples
  doc: The list of sample files (space separated).The wildcard can also be used.
  type: string[]
  inputBinding:
    prefix: --ifn_samples
- id: ifn_second_samples
  doc: The list of second sample files (space separated).The wildcard can also be
    used. Note that only the markers found in the samples or reference genomes specified
    by --ifn_samples or --ifn_representative_sample or --ifn_ref_genomes with add_reference_genomes_as_second_samples=False
    will be used to build the phylogenetic trees.
  type: string[]
  inputBinding:
    prefix: --ifn_second_samples
- id: ifn_representative_sample
  doc: The representative sample. The marker list of each species extracted from this
    sample will be used for all other samples.
  type: string
  inputBinding:
    prefix: --ifn_representative_sample
- id: index
  doc: Specify the id of the database version to use. If the database files are not
    found on the local MetaPhlAn2 installation they will be automatically downloaded
  type: string
  inputBinding:
    prefix: --index
- id: mpa_pkl
  doc: The database of metaphlan2.py
  type: string
  inputBinding:
    prefix: --mpa_pkl
- id: output_dir
  doc: The output directory.
  type: string
  inputBinding:
    prefix: --output_dir
- id: ifn_markers
  doc: The marker file in fasta format.
  type: string
  inputBinding:
    prefix: --ifn_markers
- id: nprocs_main
  doc: The number of processors are used for the main threads. Default 1.
  type: string
  inputBinding:
    prefix: --nprocs_main
- id: nprocs_load_samples
  doc: The number of processors are used for loading samples. Default nprocs_main.
  type: string
  inputBinding:
    prefix: --nprocs_load_samples
- id: nprocs_align_clean
  doc: The number of processors are used for aligning and cleaning markers. Default
    nprocs_main.
  type: string
  inputBinding:
    prefix: --nprocs_align_clean
- id: nprocs_ra_xml
  doc: The number of processors are used for running raxml. Default nprocs_main.
  type: string
  inputBinding:
    prefix: --nprocs_raxml
- id: bootstrap_ra_xml
  doc: The number of runs for bootstraping when building the tree. Default 0.
  type: string
  inputBinding:
    prefix: --bootstrap_raxml
- id: ifn_ref_genomes
  doc: The reference genome file names. They are separated by spaces.
  type: string[]
  inputBinding:
    prefix: --ifn_ref_genomes
- id: add_reference_genomes_as_second_samples
  doc: Add reference genomes as second samples. Default "False". Note that only the
    markers found in the samples or reference genomes specified by --ifn_samples or
    --ifn_representative_sample or --ifn_ref_genomes with add_reference_genomes_as_second_samples=False
    will be used to build the phylogenetic trees.
  type: boolean
  inputBinding:
    prefix: --add_reference_genomes_as_second_samples
- id: n_in_marker
  doc: The consensus markers with the rate of N nucleotides greater than this threshold
    are removed. Default 0.2.
  type: string
  inputBinding:
    prefix: --N_in_marker
- id: marker_strip_length
  doc: The number of nucleotides will be deleted from each of two ends of a marker.
    Default 50.
  type: string
  inputBinding:
    prefix: --marker_strip_length
- id: marker_in_clade
  doc: In each sample, the clades with the rate of present markers less than this
    threshold are removed. Default 0.8.
  type: string
  inputBinding:
    prefix: --marker_in_clade
- id: second_marker_in_clade
  doc: In each sample/reference genomes specified by --ifn_second_samples, or --add_reference_genomes_as_second_samples,
    the clades with the rate of present markers less than this threshold are removed.
    Default 0.8.
  type: string
  inputBinding:
    prefix: --second_marker_in_clade
- id: sample_in_clade
  doc: Only clades present in at least sample_in_clade samples are kept. Default 2.
  type: string
  inputBinding:
    prefix: --sample_in_clade
- id: sample_in_marker
  doc: If the percentage of samples that a marker present in is less than this threshold,
    that marker is removed. Default 0.8.
  type: string
  inputBinding:
    prefix: --sample_in_marker
- id: gap_in_trailing_col
  doc: If the number of the trailing nucleotide columns in aligned markers with the
    percentage of gaps greater than gap_in_trailing_col is less than gap_trailing_col_limit,
    these columns will be removed. Default 0.2.
  type: string
  inputBinding:
    prefix: --gap_in_trailing_col
- id: gap_trailing_col_limit
  doc: If the number of the trailing nucleotide columns in aligned markers with the
    percentage of gaps greater than gap_in_trailing_col is less than gap_trailing_col_limit,
    these columns will be removed. Default 101.
  type: string
  inputBinding:
    prefix: --gap_trailing_col_limit
- id: gap_in_internal_col
  doc: The internal nucleotide columns in aligned markers with the percentage of gaps
    greater than gap_in_internal_col will be removed. Default 0.3.
  type: string
  inputBinding:
    prefix: --gap_in_internal_col
- id: gap_in_sample
  doc: The samples with full sequences from all markers and having the percentage
    of gaps greater than this threshold will be removed. Default 0.2.
  type: string
  inputBinding:
    prefix: --gap_in_sample
- id: second_gap_in_sample
  doc: The samples specified by --ifn_second_samples with full sequences from all
    markers and having the percentage of gaps greater than this threshold will be
    removed. Default 0.2.
  type: string
  inputBinding:
    prefix: --second_gap_in_sample
- id: n_col
  doc: In aligned markers, if the percentage of nucleotide columns containing more
    than N_count Ns less than this threshold, these columns will be removed. Default
    0.8.
  type: string
  inputBinding:
    prefix: --N_col
- id: n_count
  doc: In aligned markers, if the percentage of nucleotide columns containing more
    than N_count Ns less than N_col threshold, these columns will be removed. Default
    0.
  type: string
  inputBinding:
    prefix: --N_count
- id: long_gap_length
  doc: In each concatenated sequence of a sample, sequential gap positions is a gap
    group. A gap group with length greater than this threshold is considered as a
    long gap group. If the ratio between the number of unique positions in all long
    gap groups and the concatenated sequence length is less than long_gap_percentage,
    these positions will be removed from all concatenated sequences. Default 2.
  type: string
  inputBinding:
    prefix: --long_gap_length
- id: long_gap_percentage
  doc: Combining this threshold with long_gap_length to removed long gaps. Default
    0.8.
  type: string
  inputBinding:
    prefix: --long_gap_percentage
- id: p_value
  doc: The p_value to reject a non-polymorphic site.Default 0.05.
  type: string
  inputBinding:
    prefix: --p_value
- id: clades
  doc: The clades (space seperated) for which the script will compute the marker alignments
    in fasta format and the phylogenetic trees. If a file name is specified, the clade
    list in that file where each clade name is on a line will be read.Default "automatically
    identify all clades".
  type: string[]
  inputBinding:
    prefix: --clades
- id: marker_list_fn
  doc: The file name containing the list of considered markers. The other markers
    will be discarded. Default "None".
  type: string
  inputBinding:
    prefix: --marker_list_fn
- id: print_clades_only
  doc: Only print the potential clades and stop without building any tree. This option
    is useful when you want to check quickly all possible clades and rerun only for
    some specific ones. Default "False".
  type: boolean
  inputBinding:
    prefix: --print_clades_only
- id: alignment_program
  doc: The alignment program. Default "muscle".
  type: string
  inputBinding:
    prefix: --alignment_program
- id: relaxed_parameters
  doc: Set marker_in_clade=0.5, sample_in_marker=0.5, N_in_marker=0.5, gap_in_sample=0.5.
    Default "False".
  type: boolean
  inputBinding:
    prefix: --relaxed_parameters
- id: relaxed_parameters_2
  doc: Set marker_in_clade=0.2, sample_in_marker=0.2, N_in_marker=0.8, gap_in_sample=0.8.
    Default "False".
  type: boolean
  inputBinding:
    prefix: --relaxed_parameters2
- id: relaxed_parameters_3
  doc: Set gap_in_trailing_col=0.9, gap_in_internal_col=0.9, gap_in_sample=0.9, second_gap_in_sample=0.5,
    sample_in_marker=0.1, marker_in_clade=0.1, second_marker_in_clade=0.1, Default
    "False".
  type: boolean
  inputBinding:
    prefix: --relaxed_parameters3
- id: keep_alignment_files
  doc: Keep the alignment files of all markers before cleaning step.
  type: boolean
  inputBinding:
    prefix: --keep_alignment_files
- id: keep_full_alignment_files
  doc: Keep the alignment files of all markers before truncating the starting and
    ending parts, and cleaning step. This is equivalent to --keep_alignment_files
    --marker_strip_length 0
  type: boolean
  inputBinding:
    prefix: --keep_full_alignment_files
- id: save_sample_2fullfreq
  doc: Save sample2fullfreq to a msgpack file sample2fullfreq.msgpack.
  type: boolean
  inputBinding:
    prefix: --save_sample2fullfreq
- id: use_threads
  doc: Use multithreading. Default "Use multiprocessing".
  type: boolean
  inputBinding:
    prefix: --use_threads
outputs: []
cwlVersion: v1.1
baseCommand:
- strainphlan.py

version 1.0

task Strainphlan.py {
  input {
    Array[String] ifn_samples
    Array[String] ifn_second_samples
    String? ifn_representative_sample
    String? index
    String? mpa_pkl
    String? output_dir
    String? ifn_markers
    String? nprocs_main
    String? nprocs_load_samples
    String? nprocs_align_clean
    String? nprocs_ra_xml
    String? bootstrap_ra_xml
    Array[String] ifn_ref_genomes
    Boolean? add_reference_genomes_as_second_samples
    String? n_in_marker
    String? marker_strip_length
    String? marker_in_clade
    String? second_marker_in_clade
    String? sample_in_clade
    String? sample_in_marker
    String? gap_in_trailing_col
    String? gap_trailing_col_limit
    String? gap_in_internal_col
    String? gap_in_sample
    String? second_gap_in_sample
    String? n_col
    String? n_count
    String? long_gap_length
    String? long_gap_percentage
    String? p_value
    Array[String] clades
    String? marker_list_fn
    Boolean? print_clades_only
    String? alignment_program
    Boolean? relaxed_parameters
    Boolean? relaxed_parameters_two
    Boolean? relaxed_parameters_three
    Boolean? keep_alignment_files
    Boolean? keep_full_alignment_files
    Boolean? save_sample_two_full_freq
    Boolean? use_threads
  }
  command <<<
    strainphlan.py \
      ~{if defined(ifn_samples) then ("--ifn_samples " +  '"' + ifn_samples + '"') else ""} \
      ~{if defined(ifn_second_samples) then ("--ifn_second_samples " +  '"' + ifn_second_samples + '"') else ""} \
      ~{if defined(ifn_representative_sample) then ("--ifn_representative_sample " +  '"' + ifn_representative_sample + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(mpa_pkl) then ("--mpa_pkl " +  '"' + mpa_pkl + '"') else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(ifn_markers) then ("--ifn_markers " +  '"' + ifn_markers + '"') else ""} \
      ~{if defined(nprocs_main) then ("--nprocs_main " +  '"' + nprocs_main + '"') else ""} \
      ~{if defined(nprocs_load_samples) then ("--nprocs_load_samples " +  '"' + nprocs_load_samples + '"') else ""} \
      ~{if defined(nprocs_align_clean) then ("--nprocs_align_clean " +  '"' + nprocs_align_clean + '"') else ""} \
      ~{if defined(nprocs_ra_xml) then ("--nprocs_raxml " +  '"' + nprocs_ra_xml + '"') else ""} \
      ~{if defined(bootstrap_ra_xml) then ("--bootstrap_raxml " +  '"' + bootstrap_ra_xml + '"') else ""} \
      ~{if defined(ifn_ref_genomes) then ("--ifn_ref_genomes " +  '"' + ifn_ref_genomes + '"') else ""} \
      ~{true="--add_reference_genomes_as_second_samples" false="" add_reference_genomes_as_second_samples} \
      ~{if defined(n_in_marker) then ("--N_in_marker " +  '"' + n_in_marker + '"') else ""} \
      ~{if defined(marker_strip_length) then ("--marker_strip_length " +  '"' + marker_strip_length + '"') else ""} \
      ~{if defined(marker_in_clade) then ("--marker_in_clade " +  '"' + marker_in_clade + '"') else ""} \
      ~{if defined(second_marker_in_clade) then ("--second_marker_in_clade " +  '"' + second_marker_in_clade + '"') else ""} \
      ~{if defined(sample_in_clade) then ("--sample_in_clade " +  '"' + sample_in_clade + '"') else ""} \
      ~{if defined(sample_in_marker) then ("--sample_in_marker " +  '"' + sample_in_marker + '"') else ""} \
      ~{if defined(gap_in_trailing_col) then ("--gap_in_trailing_col " +  '"' + gap_in_trailing_col + '"') else ""} \
      ~{if defined(gap_trailing_col_limit) then ("--gap_trailing_col_limit " +  '"' + gap_trailing_col_limit + '"') else ""} \
      ~{if defined(gap_in_internal_col) then ("--gap_in_internal_col " +  '"' + gap_in_internal_col + '"') else ""} \
      ~{if defined(gap_in_sample) then ("--gap_in_sample " +  '"' + gap_in_sample + '"') else ""} \
      ~{if defined(second_gap_in_sample) then ("--second_gap_in_sample " +  '"' + second_gap_in_sample + '"') else ""} \
      ~{if defined(n_col) then ("--N_col " +  '"' + n_col + '"') else ""} \
      ~{if defined(n_count) then ("--N_count " +  '"' + n_count + '"') else ""} \
      ~{if defined(long_gap_length) then ("--long_gap_length " +  '"' + long_gap_length + '"') else ""} \
      ~{if defined(long_gap_percentage) then ("--long_gap_percentage " +  '"' + long_gap_percentage + '"') else ""} \
      ~{if defined(p_value) then ("--p_value " +  '"' + p_value + '"') else ""} \
      ~{if defined(clades) then ("--clades " +  '"' + clades + '"') else ""} \
      ~{if defined(marker_list_fn) then ("--marker_list_fn " +  '"' + marker_list_fn + '"') else ""} \
      ~{true="--print_clades_only" false="" print_clades_only} \
      ~{if defined(alignment_program) then ("--alignment_program " +  '"' + alignment_program + '"') else ""} \
      ~{true="--relaxed_parameters" false="" relaxed_parameters} \
      ~{true="--relaxed_parameters2" false="" relaxed_parameters_two} \
      ~{true="--relaxed_parameters3" false="" relaxed_parameters_three} \
      ~{true="--keep_alignment_files" false="" keep_alignment_files} \
      ~{true="--keep_full_alignment_files" false="" keep_full_alignment_files} \
      ~{true="--save_sample2fullfreq" false="" save_sample_two_full_freq} \
      ~{true="--use_threads" false="" use_threads}
  >>>
  parameter_meta {
    ifn_samples: "The list of sample files (space separated).The wildcard can also be used."
    ifn_second_samples: "The list of second sample files (space separated).The wildcard can also be used. Note that only the markers found in the samples or reference genomes specified by --ifn_samples or --ifn_representative_sample or --ifn_ref_genomes with add_reference_genomes_as_second_samples=False will be used to build the phylogenetic trees."
    ifn_representative_sample: "The representative sample. The marker list of each species extracted from this sample will be used for all other samples."
    index: "Specify the id of the database version to use. If the database files are not found on the local MetaPhlAn2 installation they will be automatically downloaded"
    mpa_pkl: "The database of metaphlan2.py"
    output_dir: "The output directory."
    ifn_markers: "The marker file in fasta format."
    nprocs_main: "The number of processors are used for the main threads. Default 1."
    nprocs_load_samples: "The number of processors are used for loading samples. Default nprocs_main."
    nprocs_align_clean: "The number of processors are used for aligning and cleaning markers. Default nprocs_main."
    nprocs_ra_xml: "The number of processors are used for running raxml. Default nprocs_main."
    bootstrap_ra_xml: "The number of runs for bootstraping when building the tree. Default 0."
    ifn_ref_genomes: "The reference genome file names. They are separated by spaces."
    add_reference_genomes_as_second_samples: "Add reference genomes as second samples. Default \"False\". Note that only the markers found in the samples or reference genomes specified by --ifn_samples or --ifn_representative_sample or --ifn_ref_genomes with add_reference_genomes_as_second_samples=False will be used to build the phylogenetic trees."
    n_in_marker: "The consensus markers with the rate of N nucleotides greater than this threshold are removed. Default 0.2."
    marker_strip_length: "The number of nucleotides will be deleted from each of two ends of a marker. Default 50."
    marker_in_clade: "In each sample, the clades with the rate of present markers less than this threshold are removed. Default 0.8."
    second_marker_in_clade: "In each sample/reference genomes specified by --ifn_second_samples, or --add_reference_genomes_as_second_samples, the clades with the rate of present markers less than this threshold are removed. Default 0.8."
    sample_in_clade: "Only clades present in at least sample_in_clade samples are kept. Default 2."
    sample_in_marker: "If the percentage of samples that a marker present in is less than this threshold, that marker is removed. Default 0.8."
    gap_in_trailing_col: "If the number of the trailing nucleotide columns in aligned markers with the percentage of gaps greater than gap_in_trailing_col is less than gap_trailing_col_limit, these columns will be removed. Default 0.2."
    gap_trailing_col_limit: "If the number of the trailing nucleotide columns in aligned markers with the percentage of gaps greater than gap_in_trailing_col is less than gap_trailing_col_limit, these columns will be removed. Default 101."
    gap_in_internal_col: "The internal nucleotide columns in aligned markers with the percentage of gaps greater than gap_in_internal_col will be removed. Default 0.3."
    gap_in_sample: "The samples with full sequences from all markers and having the percentage of gaps greater than this threshold will be removed. Default 0.2."
    second_gap_in_sample: "The samples specified by --ifn_second_samples with full sequences from all markers and having the percentage of gaps greater than this threshold will be removed. Default 0.2."
    n_col: "In aligned markers, if the percentage of nucleotide columns containing more than N_count Ns less than this threshold, these columns will be removed. Default 0.8."
    n_count: "In aligned markers, if the percentage of nucleotide columns containing more than N_count Ns less than N_col threshold, these columns will be removed. Default 0."
    long_gap_length: "In each concatenated sequence of a sample, sequential gap positions is a gap group. A gap group with length greater than this threshold is considered as a long gap group. If the ratio between the number of unique positions in all long gap groups and the concatenated sequence length is less than long_gap_percentage, these positions will be removed from all concatenated sequences. Default 2."
    long_gap_percentage: "Combining this threshold with long_gap_length to removed long gaps. Default 0.8."
    p_value: "The p_value to reject a non-polymorphic site.Default 0.05."
    clades: "The clades (space seperated) for which the script will compute the marker alignments in fasta format and the phylogenetic trees. If a file name is specified, the clade list in that file where each clade name is on a line will be read.Default \"automatically identify all clades\"."
    marker_list_fn: "The file name containing the list of considered markers. The other markers will be discarded. Default \"None\"."
    print_clades_only: "Only print the potential clades and stop without building any tree. This option is useful when you want to check quickly all possible clades and rerun only for some specific ones. Default \"False\"."
    alignment_program: "The alignment program. Default \"muscle\"."
    relaxed_parameters: "Set marker_in_clade=0.5, sample_in_marker=0.5, N_in_marker=0.5, gap_in_sample=0.5. Default \"False\"."
    relaxed_parameters_two: "Set marker_in_clade=0.2, sample_in_marker=0.2, N_in_marker=0.8, gap_in_sample=0.8. Default \"False\"."
    relaxed_parameters_three: "Set gap_in_trailing_col=0.9, gap_in_internal_col=0.9, gap_in_sample=0.9, second_gap_in_sample=0.5, sample_in_marker=0.1, marker_in_clade=0.1, second_marker_in_clade=0.1, Default \"False\"."
    keep_alignment_files: "Keep the alignment files of all markers before cleaning step."
    keep_full_alignment_files: "Keep the alignment files of all markers before truncating the starting and ending parts, and cleaning step. This is equivalent to --keep_alignment_files --marker_strip_length 0"
    save_sample_two_full_freq: "Save sample2fullfreq to a msgpack file sample2fullfreq.msgpack."
    use_threads: "Use multithreading. Default \"Use multiprocessing\"."
  }
}
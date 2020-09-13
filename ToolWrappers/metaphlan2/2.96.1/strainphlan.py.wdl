version 1.0

task Strainphlanpy {
  input {
    Array[String] ifn_samples
    Array[String] ifn_second_samples
    String? ifn_representative_sample
    Int? index
    Int? mpa_pkl
    Directory? output_dir
    File? ifn_markers
    Int? nprocs_main
    Int? nprocs_load_samples
    Int? nprocs_align_clean
    Int? nprocs_ra_xml
    Int? bootstrap_ra_xml
    Array[String] ifn_ref_genomes
    Boolean? add_reference_genomes_as_second_samples
    Float? n_in_marker
    Int? marker_strip_length
    Float? marker_in_clade
    Float? second_marker_in_clade
    Int? sample_in_clade
    Float? sample_in_marker
    Int? gap_in_trailing_col
    Int? gap_trailing_col_limit
    Float? gap_in_internal_col
    Float? gap_in_sample
    Float? second_gap_in_sample
    Float? n_col
    Int? n_count
    Int? long_gap_length
    Float? long_gap_percentage
    String? p_value
    File? marker_list_fn
    Boolean? print_clades_only
    String? alignment_program
    Boolean? relaxed_parameters
    Boolean? relaxed_parameters_two
    Boolean? relaxed_parameters_three
    Boolean? keep_alignment_files
    Boolean? keep_full_alignment_files
    Boolean? save_sample_two_full_freq
    Boolean? use_threads
    Float zero_dot_zero_five_dot
  }
  command <<<
    strainphlan_py \
      ~{zero_dot_zero_five_dot} \
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
      ~{if (add_reference_genomes_as_second_samples) then "--add_reference_genomes_as_second_samples" else ""} \
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
      ~{if defined(marker_list_fn) then ("--marker_list_fn " +  '"' + marker_list_fn + '"') else ""} \
      ~{if (print_clades_only) then "--print_clades_only" else ""} \
      ~{if defined(alignment_program) then ("--alignment_program " +  '"' + alignment_program + '"') else ""} \
      ~{if (relaxed_parameters) then "--relaxed_parameters" else ""} \
      ~{if (relaxed_parameters_two) then "--relaxed_parameters2" else ""} \
      ~{if (relaxed_parameters_three) then "--relaxed_parameters3" else ""} \
      ~{if (keep_alignment_files) then "--keep_alignment_files" else ""} \
      ~{if (keep_full_alignment_files) then "--keep_full_alignment_files" else ""} \
      ~{if (save_sample_two_full_freq) then "--save_sample2fullfreq" else ""} \
      ~{if (use_threads) then "--use_threads" else ""}
  >>>
  parameter_meta {
    ifn_samples: "The list of sample files (space separated).The\\nwildcard can also be used."
    ifn_second_samples: "The list of second sample files (space separated).The\\nwildcard can also be used. Note that only the markers\\nfound in the samples or reference genomes specified by\\n--ifn_samples or --ifn_representative_sample or\\n--ifn_ref_genomes with\\nadd_reference_genomes_as_second_samples=False will be\\nused to build the phylogenetic trees."
    ifn_representative_sample: "The representative sample. The marker list of each\\nspecies extracted from this sample will be used for\\nall other samples."
    index: "Specify the id of the database version to use. If the\\ndatabase files are not found on the local MetaPhlAn2\\ninstallation they will be automatically downloaded"
    mpa_pkl: "The database of metaphlan2.py"
    output_dir: "The output directory."
    ifn_markers: "The marker file in fasta format."
    nprocs_main: "The number of processors are used for the main\\nthreads. Default 1."
    nprocs_load_samples: "The number of processors are used for loading samples.\\nDefault nprocs_main."
    nprocs_align_clean: "The number of processors are used for aligning and\\ncleaning markers. Default nprocs_main."
    nprocs_ra_xml: "The number of processors are used for running raxml.\\nDefault nprocs_main."
    bootstrap_ra_xml: "The number of runs for bootstraping when building the\\ntree. Default 0."
    ifn_ref_genomes: "The reference genome file names. They are separated by\\nspaces."
    add_reference_genomes_as_second_samples: "Add reference genomes as second samples. Default\\n\\\"False\\\". Note that only the markers found in the\\nsamples or reference genomes specified by\\n--ifn_samples or --ifn_representative_sample or\\n--ifn_ref_genomes with\\nadd_reference_genomes_as_second_samples=False will be\\nused to build the phylogenetic trees."
    n_in_marker: "The consensus markers with the rate of N nucleotides\\ngreater than this threshold are removed. Default 0.2."
    marker_strip_length: "The number of nucleotides will be deleted from each of\\ntwo ends of a marker. Default 50."
    marker_in_clade: "In each sample, the clades with the rate of present\\nmarkers less than this threshold are removed. Default\\n0.8."
    second_marker_in_clade: "In each sample/reference genomes specified by\\n--ifn_second_samples, or\\n--add_reference_genomes_as_second_samples, the clades\\nwith the rate of present markers less than this\\nthreshold are removed. Default 0.8."
    sample_in_clade: "Only clades present in at least sample_in_clade\\nsamples are kept. Default 2."
    sample_in_marker: "If the percentage of samples that a marker present in\\nis less than this threshold, that marker is removed.\\nDefault 0.8."
    gap_in_trailing_col: "If the number of the trailing nucleotide columns in\\naligned markers with the percentage of gaps greater\\nthan gap_in_trailing_col is less than\\ngap_trailing_col_limit, these columns will be removed.\\nDefault 0.2."
    gap_trailing_col_limit: "If the number of the trailing nucleotide columns in\\naligned markers with the percentage of gaps greater\\nthan gap_in_trailing_col is less than\\ngap_trailing_col_limit, these columns will be removed.\\nDefault 101."
    gap_in_internal_col: "The internal nucleotide columns in aligned markers\\nwith the percentage of gaps greater than\\ngap_in_internal_col will be removed. Default 0.3."
    gap_in_sample: "The samples with full sequences from all markers and\\nhaving the percentage of gaps greater than this\\nthreshold will be removed. Default 0.2."
    second_gap_in_sample: "The samples specified by --ifn_second_samples with\\nfull sequences from all markers and having the\\npercentage of gaps greater than this threshold will be\\nremoved. Default 0.2."
    n_col: "In aligned markers, if the percentage of nucleotide\\ncolumns containing more than N_count Ns less than this\\nthreshold, these columns will be removed. Default 0.8."
    n_count: "In aligned markers, if the percentage of nucleotide\\ncolumns containing more than N_count Ns less than\\nN_col threshold, these columns will be removed.\\nDefault 0."
    long_gap_length: "In each concatenated sequence of a sample, sequential\\ngap positions is a gap group. A gap group with length\\ngreater than this threshold is considered as a long\\ngap group. If the ratio between the number of unique\\npositions in all long gap groups and the concatenated\\nsequence length is less than long_gap_percentage,\\nthese positions will be removed from all concatenated\\nsequences. Default 2."
    long_gap_percentage: "Combining this threshold with long_gap_length to\\nremoved long gaps. Default 0.8."
    p_value: "The p_value to reject a non-polymorphic site.Default"
    marker_list_fn: "The file name containing the list of considered\\nmarkers. The other markers will be discarded. Default\\n\\\"None\\\"."
    print_clades_only: "Only print the potential clades and stop without\\nbuilding any tree. This option is useful when you want\\nto check quickly all possible clades and rerun only\\nfor some specific ones. Default \\\"False\\\"."
    alignment_program: "The alignment program. Default \\\"muscle\\\"."
    relaxed_parameters: "Set marker_in_clade=0.5, sample_in_marker=0.5,\\nN_in_marker=0.5, gap_in_sample=0.5. Default \\\"False\\\"."
    relaxed_parameters_two: "Set marker_in_clade=0.2, sample_in_marker=0.2,\\nN_in_marker=0.8, gap_in_sample=0.8. Default \\\"False\\\"."
    relaxed_parameters_three: "Set gap_in_trailing_col=0.9, gap_in_internal_col=0.9,\\ngap_in_sample=0.9, second_gap_in_sample=0.5,\\nsample_in_marker=0.1, marker_in_clade=0.1,\\nsecond_marker_in_clade=0.1, Default \\\"False\\\"."
    keep_alignment_files: "Keep the alignment files of all markers before\\ncleaning step."
    keep_full_alignment_files: "Keep the alignment files of all markers before\\ntruncating the starting and ending parts, and cleaning\\nstep. This is equivalent to --keep_alignment_files\\n--marker_strip_length 0"
    save_sample_two_full_freq: "Save sample2fullfreq to a msgpack file\\nsample2fullfreq.msgpack."
    use_threads: "Use multithreading. Default \\\"Use multiprocessing\\\"."
    zero_dot_zero_five_dot: "--clades CLADES [CLADES ...]"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}
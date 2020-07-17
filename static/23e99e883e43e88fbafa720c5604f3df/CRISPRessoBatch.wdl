version 1.0

task CRISPRessoBatch {
  input {
    String? fast_q_r_one
    String? fast_q_r_two
    String? amplicon_seq
    String? amplicon_name
    String? amplicon_min_alignment_score
    String? default_min_aln_score
    Boolean? expand_ambiguous_alignments
    String? guide_seq
    String? guide_name
    String? flexi_guide
    String? flexi_guide_homology
    String? flexi_guide_name
    String? expected_hdr_amplicon_seq
    String? coding_seq
    Int? min_average_read_quality
    Int? min_single_bp_quality
    Int? min_bp_quality_or_n
    File? file_prefix
    String? name
    String? output_folder
    Boolean? split_paired_end
    Boolean? trim_sequences
    String? trim_mo_matic_command
    String? trim_mo_matic_options_string
    String? flash_command
    Int? min_paired_end_reads_overlap
    Int? max_paired_end_reads_overlap
    Boolean? stringent_flash_merging
    String? quantification_window_size
    String? quantification_window_center
    String? exclude_bp_from_left
    String? exclude_bp_from_right
    Boolean? ignore_substitutions
    Boolean? ignore_insertions
    Boolean? ignore_deletions
    Boolean? discard_in_del_reads
    String? dso_dn
    String? needleman_wunsch_gap_open
    String? needleman_wunsch_gap_extend
    String? needleman_wunsch_gap_incentive
    String? needleman_wunsch_aln_matrix_loc
    String? offset_around_cut_to_plot
    Int? min_frequency_alleles_around_cut_to_plot
    Boolean? expand_allele_plots_by_quantification
    String? quantification_window_coordinates
    Boolean? keep_intermediate
    Boolean? dump
    Int? max_rows_alleles_around_cut_to_plot
    Boolean? suppress_report
    Boolean? place_report_in_output_folder
    Boolean? suppress_plots
    Boolean? base_editor_output
    String? conversion_nuc_from
    String? conversion_nuc_to
    Boolean? cris_presso_one_mode
    Boolean? auto
    Boolean? debug
    Boolean? no_rerun
    String? batch_settings
    Boolean? skip_failed
    Int? min_reads_for_inclusion
    String? n_processes
    String? batch_output_folder
    String? cris_presso_command
  }
  command <<<
    CRISPRessoBatch \
      ~{if defined(fast_q_r_one) then ("--fastq_r1 " +  '"' + fast_q_r_one + '"') else ""} \
      ~{if defined(fast_q_r_two) then ("--fastq_r2 " +  '"' + fast_q_r_two + '"') else ""} \
      ~{if defined(amplicon_seq) then ("--amplicon_seq " +  '"' + amplicon_seq + '"') else ""} \
      ~{if defined(amplicon_name) then ("--amplicon_name " +  '"' + amplicon_name + '"') else ""} \
      ~{if defined(amplicon_min_alignment_score) then ("--amplicon_min_alignment_score " +  '"' + amplicon_min_alignment_score + '"') else ""} \
      ~{if defined(default_min_aln_score) then ("--default_min_aln_score " +  '"' + default_min_aln_score + '"') else ""} \
      ~{true="--expand_ambiguous_alignments" false="" expand_ambiguous_alignments} \
      ~{if defined(guide_seq) then ("--guide_seq " +  '"' + guide_seq + '"') else ""} \
      ~{if defined(guide_name) then ("--guide_name " +  '"' + guide_name + '"') else ""} \
      ~{if defined(flexi_guide) then ("--flexiguide " +  '"' + flexi_guide + '"') else ""} \
      ~{if defined(flexi_guide_homology) then ("--flexiguide_homology " +  '"' + flexi_guide_homology + '"') else ""} \
      ~{if defined(flexi_guide_name) then ("--flexiguide_name " +  '"' + flexi_guide_name + '"') else ""} \
      ~{if defined(expected_hdr_amplicon_seq) then ("--expected_hdr_amplicon_seq " +  '"' + expected_hdr_amplicon_seq + '"') else ""} \
      ~{if defined(coding_seq) then ("--coding_seq " +  '"' + coding_seq + '"') else ""} \
      ~{if defined(min_average_read_quality) then ("--min_average_read_quality " +  '"' + min_average_read_quality + '"') else ""} \
      ~{if defined(min_single_bp_quality) then ("--min_single_bp_quality " +  '"' + min_single_bp_quality + '"') else ""} \
      ~{if defined(min_bp_quality_or_n) then ("--min_bp_quality_or_N " +  '"' + min_bp_quality_or_n + '"') else ""} \
      ~{if defined(file_prefix) then ("--file_prefix " +  '"' + file_prefix + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(output_folder) then ("--output_folder " +  '"' + output_folder + '"') else ""} \
      ~{true="--split_paired_end" false="" split_paired_end} \
      ~{true="--trim_sequences" false="" trim_sequences} \
      ~{if defined(trim_mo_matic_command) then ("--trimmomatic_command " +  '"' + trim_mo_matic_command + '"') else ""} \
      ~{if defined(trim_mo_matic_options_string) then ("--trimmomatic_options_string " +  '"' + trim_mo_matic_options_string + '"') else ""} \
      ~{if defined(flash_command) then ("--flash_command " +  '"' + flash_command + '"') else ""} \
      ~{if defined(min_paired_end_reads_overlap) then ("--min_paired_end_reads_overlap " +  '"' + min_paired_end_reads_overlap + '"') else ""} \
      ~{if defined(max_paired_end_reads_overlap) then ("--max_paired_end_reads_overlap " +  '"' + max_paired_end_reads_overlap + '"') else ""} \
      ~{true="--stringent_flash_merging" false="" stringent_flash_merging} \
      ~{if defined(quantification_window_size) then ("--quantification_window_size " +  '"' + quantification_window_size + '"') else ""} \
      ~{if defined(quantification_window_center) then ("--quantification_window_center " +  '"' + quantification_window_center + '"') else ""} \
      ~{if defined(exclude_bp_from_left) then ("--exclude_bp_from_left " +  '"' + exclude_bp_from_left + '"') else ""} \
      ~{if defined(exclude_bp_from_right) then ("--exclude_bp_from_right " +  '"' + exclude_bp_from_right + '"') else ""} \
      ~{true="--ignore_substitutions" false="" ignore_substitutions} \
      ~{true="--ignore_insertions" false="" ignore_insertions} \
      ~{true="--ignore_deletions" false="" ignore_deletions} \
      ~{true="--discard_indel_reads" false="" discard_in_del_reads} \
      ~{if defined(dso_dn) then ("--dsODN " +  '"' + dso_dn + '"') else ""} \
      ~{if defined(needleman_wunsch_gap_open) then ("--needleman_wunsch_gap_open " +  '"' + needleman_wunsch_gap_open + '"') else ""} \
      ~{if defined(needleman_wunsch_gap_extend) then ("--needleman_wunsch_gap_extend " +  '"' + needleman_wunsch_gap_extend + '"') else ""} \
      ~{if defined(needleman_wunsch_gap_incentive) then ("--needleman_wunsch_gap_incentive " +  '"' + needleman_wunsch_gap_incentive + '"') else ""} \
      ~{if defined(needleman_wunsch_aln_matrix_loc) then ("--needleman_wunsch_aln_matrix_loc " +  '"' + needleman_wunsch_aln_matrix_loc + '"') else ""} \
      ~{if defined(offset_around_cut_to_plot) then ("--offset_around_cut_to_plot " +  '"' + offset_around_cut_to_plot + '"') else ""} \
      ~{if defined(min_frequency_alleles_around_cut_to_plot) then ("--min_frequency_alleles_around_cut_to_plot " +  '"' + min_frequency_alleles_around_cut_to_plot + '"') else ""} \
      ~{true="--expand_allele_plots_by_quantification" false="" expand_allele_plots_by_quantification} \
      ~{if defined(quantification_window_coordinates) then ("--quantification_window_coordinates " +  '"' + quantification_window_coordinates + '"') else ""} \
      ~{true="--keep_intermediate" false="" keep_intermediate} \
      ~{true="--dump" false="" dump} \
      ~{if defined(max_rows_alleles_around_cut_to_plot) then ("--max_rows_alleles_around_cut_to_plot " +  '"' + max_rows_alleles_around_cut_to_plot + '"') else ""} \
      ~{true="--suppress_report" false="" suppress_report} \
      ~{true="--place_report_in_output_folder" false="" place_report_in_output_folder} \
      ~{true="--suppress_plots" false="" suppress_plots} \
      ~{true="--base_editor_output" false="" base_editor_output} \
      ~{if defined(conversion_nuc_from) then ("--conversion_nuc_from " +  '"' + conversion_nuc_from + '"') else ""} \
      ~{if defined(conversion_nuc_to) then ("--conversion_nuc_to " +  '"' + conversion_nuc_to + '"') else ""} \
      ~{true="--crispresso1_mode" false="" cris_presso_one_mode} \
      ~{true="--auto" false="" auto} \
      ~{true="--debug" false="" debug} \
      ~{true="--no_rerun" false="" no_rerun} \
      ~{if defined(batch_settings) then ("--batch_settings " +  '"' + batch_settings + '"') else ""} \
      ~{true="--skip_failed" false="" skip_failed} \
      ~{if defined(min_reads_for_inclusion) then ("--min_reads_for_inclusion " +  '"' + min_reads_for_inclusion + '"') else ""} \
      ~{if defined(n_processes) then ("--n_processes " +  '"' + n_processes + '"') else ""} \
      ~{if defined(batch_output_folder) then ("--batch_output_folder " +  '"' + batch_output_folder + '"') else ""} \
      ~{if defined(cris_presso_command) then ("--crispresso_command " +  '"' + cris_presso_command + '"') else ""}
  >>>
  parameter_meta {
    fast_q_r_one: "First fastq file (default: Fastq filename)"
    fast_q_r_two: "Second fastq file for paired end reads (default: )"
    amplicon_seq: "Amplicon Sequence (can be comma-separated list of multiple sequences) (default: None)"
    amplicon_name: "Amplicon Name (can be comma-separated list of multiple names, corresponding to amplicon sequences given in --amplicon_seq (default: Reference)"
    amplicon_min_alignment_score: "Amplicon Minimum Alignment Score; score between 0 and 100; sequences must have at least this homology score with the amplicon to be aligned (can be comma- separated list of multiple scores, corresponding to amplicon sequences given in --amplicon_seq) (default: )"
    default_min_aln_score: "Default minimum homology score for a read to align to a reference amplicon (default: 60)"
    expand_ambiguous_alignments: "If more than one reference amplicon is given, reads that align to multiple reference amplicons will count equally toward each amplicon. Default behavior is to exclude ambiguous alignments. (default: False)"
    guide_seq: "sgRNA sequence, if more than one, please separate by commas. Note that the sgRNA needs to be input as the guide RNA sequence (usually 20 nt) immediately adjacent to but not including the PAM sequence (5' of NGG for SpCas9). If the PAM is found on the opposite strand with respect to the Amplicon Sequence, ensure the sgRNA sequence is also found on the opposite strand. The CRISPResso convention is to depict the expected cleavage position using the value of the parameter '--quantification_window_center' nucleotides from the 3' end of the guide. In addition, the use of alternate nucleases besides SpCas9 is supported. For example, if using the Cpf1 system, enter the sequence (usually 20 nt) immediately 3' of the PAM sequence and explicitly set the '--cleavage_offset' parameter to 1, since the default setting of -3 is suitable only for SpCas9. (default: )"
    guide_name: "sgRNA names, if more than one, please separate by commas. (default: )"
    flexi_guide: "sgRNA sequence (flexible) (can be comma-separated list of multiple flexiguides). The flexiguide sequence will be aligned to the amplicon sequence(s), as long as the guide sequence has homology as set by --flexiguide_homology. (default: None)"
    flexi_guide_homology: "flexiguides will yield guides in amplicons with at least this homology to the flexiguide sequence. (default: 80)"
    flexi_guide_name: "flexiguide name (default: )"
    expected_hdr_amplicon_seq: "Amplicon sequence expected after HDR (default: )"
    coding_seq: "Subsequence/s of the amplicon sequence covering one or more coding sequences for frameshift analysis. If more than one (for example, split by intron/s), please separate by commas. (default: )"
    min_average_read_quality: "Minimum average quality score (phred33) to keep a read (default: 0)"
    min_single_bp_quality: "Minimum single bp score (phred33) to keep a read (default: 0)"
    min_bp_quality_or_n: "Bases with a quality score (phred33) less than this value will be set to \"N\" (default: 0)"
    file_prefix: "File prefix for output plots and tables (default: )"
    name: "Output name of the report (default: the names is obtained from the filename of the fastq file/s used in input) (default: )"
    output_folder: "Output folder to use for the analysis (default: current folder) (default: )"
    split_paired_end: "Splits a single fastq file containing paired end reads in two files before running CRISPResso (default: False)"
    trim_sequences: "Enable the trimming of Illumina adapters with Trimmomatic (default: False)"
    trim_mo_matic_command: "Command to run trimmomatic (default: trimmomatic)"
    trim_mo_matic_options_string: "Override options for Trimmomatic, e.g. \"ILLUMINACLIP:/data/NexteraPE-PE.fa:0:90:10:0:true\" (default: )"
    flash_command: "Command to run flash (default: flash)"
    min_paired_end_reads_overlap: "Parameter for the FLASH read merging step. Minimum required overlap length between two reads to provide a confident overlap. (default: 10)"
    max_paired_end_reads_overlap: "Parameter for the FLASH merging step. Maximum overlap length expected in approximately 90% of read pairs. Please see the FLASH manual for more information. (default: 100)"
    stringent_flash_merging: "Use stringent parameters for flash merging. In the case where flash could merge R1 and R2 reads ambiguously, the expected overlap is calculated as 2*average_read_length - amplicon_length. The flash parameters for --min-overlap and --max-overlap will be set to prefer merged reads with length within 10bp of the expected overlap. These values override the --min_paired_end_reads_overlap or --max_paired_end_reads_overlap CRISPResso parameters. (default: False)"
    quantification_window_size: "Defines the size (in bp) of the quantification window extending from the position specified by the \"-- cleavage_offset\" or \"--quantification_window_center\" parameter in relation to the provided guide RNA sequence(s) (--sgRNA). Mutations within this number of bp from the quantification window center are used in classifying reads as modified or unmodified. A value of 0 disables this window and indels in the entire amplicon are considered. Default is 1, 1bp on each side of the cleavage position for a total length of 2bp. (default: 1)"
    quantification_window_center: "Center of quantification window to use within respect to the 3' end of the provided sgRNA sequence. Remember that the sgRNA sequence must be entered without the PAM. For cleaving nucleases, this is the predicted cleavage position. The default is -3 and is suitable for the Cas9 system. For alternate nucleases, other cleavage offsets may be appropriate, for example, if using Cpf1 this parameter would be set to 1. For base editors, this could be set to -17 to only include mutations near the 5' end of the sgRNA. (default: -3)"
    exclude_bp_from_left: "Exclude bp from the left side of the amplicon sequence for the quantification of the indels (default: 15)"
    exclude_bp_from_right: "Exclude bp from the right side of the amplicon sequence for the quantification of the indels (default: 15)"
    ignore_substitutions: "Ignore substitutions events for the quantification and visualization (default: False)"
    ignore_insertions: "Ignore insertions events for the quantification and visualization (default: False)"
    ignore_deletions: "Ignore deletions events for the quantification and visualization (default: False)"
    discard_in_del_reads: "Discard reads with indels in the quantification window from analysis (default: False)"
    dso_dn: "Label reads with the dsODN sequence provided (default: )"
    needleman_wunsch_gap_open: "Gap open option for Needleman-Wunsch alignment (default: -20)"
    needleman_wunsch_gap_extend: "Gap extend option for Needleman-Wunsch alignment (default: -2)"
    needleman_wunsch_gap_incentive: "Gap incentive value for inserting indels at cut sites (default: 1)"
    needleman_wunsch_aln_matrix_loc: "Location of the matrix specifying substitution scores in the NCBI format (see ftp://ftp.ncbi.nih.gov/blast/matrices/) (default: EDNAFULL)"
    offset_around_cut_to_plot: "Defines the size of the window extending from the quantification window center to plot. Nucleotides within plot_window_size of the quantification_window_center for each guide are plotted. (default: 20)"
    min_frequency_alleles_around_cut_to_plot: "Minimum % reads required to report an allele in the alleles table plot. (default: 0.2)"
    expand_allele_plots_by_quantification: "If set, alleles with different modifications in the quantification window (but not necessarily in the plotting window (e.g. for another sgRNA)) are plotted on separate lines, even though they may have the same apparent sequence. To force the allele plot and the allele table to be the same, set this parameter. If unset, all alleles with the same sequence will be collapsed into one row. (default: False)"
    quantification_window_coordinates: "Bp positions in the amplicon sequence specifying the quantification window. This parameter overrides values of the \"--quantification_window_center\", \"-- cleavage_offset\", \"--window_around_sgrna\" or \"-- window_around_sgrna\" values. Any indels/substitutions outside this window are excluded. Indexes are 0-based, meaning that the first nucleotide is position 0. Ranges are separted by the dash sign (e.g. \"start- stop\"), and multiple ranges can be separated by the underscore (_). A value of 0 disables this filter. (can be comma-separated list of values, corresponding to amplicon sequences given in --amplicon_seq e.g. 5-10,5-10_20-30 would specify the 5th-10th bp in the first reference and the 5th-10th and 20th-30th bp in the second reference) (default: None)"
    keep_intermediate: "Keep all the intermediate files (default: False)"
    dump: "Dump numpy arrays and pandas dataframes to file for debugging purposes (default: False)"
    max_rows_alleles_around_cut_to_plot: "Maximum number of rows to report in the alleles table plot. (default: 50)"
    suppress_report: "Suppress output report (default: False)"
    place_report_in_output_folder: "If true, report will be written inside the CRISPResso output folder. By default, the report will be written one directory up from the report output. (default: False)"
    suppress_plots: "Suppress output plots (default: False)"
    base_editor_output: "Outputs plots and tables to aid in analysis of base editor studies. (default: False)"
    conversion_nuc_from: "For base editor plots, this is the nucleotide targeted by the base editor (default: C)"
    conversion_nuc_to: "For base editor plots, this is the nucleotide produced by the base editor (default: T)"
    cris_presso_one_mode: "Parameter usage as in CRISPResso 1 (default: False)"
    auto: "Infer amplicon sequence from most common reads (default: False)"
    debug: "Show debug messages (default: False)"
    no_rerun: "Don't rerun CRISPResso2 if a run using the same parameters has already been finished. (default: False)"
    batch_settings: "Settings file for batch. Must be tab-separated text file. The header row contains CRISPResso parameters (e.g., fastq_r1, fastq_r2, amplicon_seq, and other optional parameters). Each following row sets parameters for an additional batch. (default: None)"
    skip_failed: "Continue with batch analysis even if one sample fails (default: False)"
    min_reads_for_inclusion: "Minimum number of reads for a batch to be included in the batch summary (default: None)"
    n_processes: "Specify the number of processes to use for quantification. Please use with caution since increasing this parameter will increase the memory required to run CRISPResso. (default: 1)"
    batch_output_folder: "Directory where batch analysis output will be stored (default: None)"
    cris_presso_command: "CRISPResso command to call (default: CRISPResso)"
  }
}
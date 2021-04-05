version 1.0

task CRISPRessoBatch {
  input {
    Float? analysis
    Int? fast_q_r_one
    Int? fast_q_r_two
    String? amplicon_seq
    String? amplicon_name
    Int? amplicon_min_alignment_score
    Int? default_min_aln_score
    Boolean? expand_ambiguous_alignments
    Int? guide_seq
    String? guide_name
    String? flexi_guide_seq
    Int? flexi_guide_homology
    String? flexi_guide_name
    Boolean? discard_guide_positions_overhanging_amplicon_edge
    String? expected_hdr_amplicon_seq
    String? coding_seq
    Int? min_average_read_quality
    Int? min_single_bp_quality
    Int? min_bp_quality_or_n
    File? file_prefix
    File? name
    Directory? output_folder
    Boolean? split_interleaved_input
    Boolean? trim_sequences
    String? trim_mo_matic_command
    Int? trim_mo_matic_options_string
    String? flash_command
    Int? min_paired_end_reads_overlap
    Int? max_paired_end_reads_overlap
    Boolean? stringent_flash_merging
    Int? quantification_window_size
    Int? quantification_window_center
    Int? exclude_bp_from_left
    Int? exclude_bp_from_right
    Boolean? use_legacy_insertion_quantification
    Boolean? ignore_substitutions
    Boolean? ignore_insertions
    Boolean? ignore_deletions
    Boolean? discard_in_del_reads
    Int? needleman_wunsch_gap_open
    Int? needleman_wunsch_gap_extend
    Int? needleman_wunsch_gap_incentive
    String? needleman_wunsch_aln_matrix_loc
    Boolean? plot_histogram_outliers
    Int? offset_around_cut_to_plot
    Int? min_frequency_alleles_around_cut_to_plot
    Boolean? expand_allele_plots_by_quantification
    Boolean? allele_plot_pcts_only_for_assigned_reference
    Int? quantification_window_coordinates
    String? annotate_wild_type_allele
    Boolean? keep_intermediate
    Boolean? dump
    Boolean? write_detailed_allele_table
    Boolean? fast_q_output
    Int? max_rows_alleles_around_cut_to_plot
    Boolean? suppress_report
    Directory? place_report_in_output_folder
    Boolean? suppress_plots
    Boolean? base_editor_output
    String? conversion_nuc_from
    String? conversion_nuc_to
    Int? prime_editing_peg_rna_spacer_seq
    Int? prime_editing_peg_rna_extension_seq
    Int? prime_editing_peg_rna_extension_quantification_window_size
    Int? prime_editing_peg_rna_scaffold_seq
    Int? prime_editing_peg_rna_scaffold_min_match_length
    Int? prime_editing_nicking_guide_seq
    String? prime_editing_override_prime_edited_ref_seq
    Boolean? cris_presso_one_mode
    String? dso_dn
    Boolean? auto
    Boolean? debug
    Boolean? no_rerun
    String? bam_input
    Int? bam_chr_loc
    File? batch_settings
    Boolean? skip_failed
    Int? min_reads_for_inclusion
    Int? n_processes
    Directory? batch_output_folder
    String? cris_presso_command
  }
  command <<<
    CRISPRessoBatch \
      ~{if defined(analysis) then ("-Analysis " +  '"' + analysis + '"') else ""} \
      ~{if defined(fast_q_r_one) then ("--fastq_r1 " +  '"' + fast_q_r_one + '"') else ""} \
      ~{if defined(fast_q_r_two) then ("--fastq_r2 " +  '"' + fast_q_r_two + '"') else ""} \
      ~{if defined(amplicon_seq) then ("--amplicon_seq " +  '"' + amplicon_seq + '"') else ""} \
      ~{if defined(amplicon_name) then ("--amplicon_name " +  '"' + amplicon_name + '"') else ""} \
      ~{if defined(amplicon_min_alignment_score) then ("--amplicon_min_alignment_score " +  '"' + amplicon_min_alignment_score + '"') else ""} \
      ~{if defined(default_min_aln_score) then ("--default_min_aln_score " +  '"' + default_min_aln_score + '"') else ""} \
      ~{if (expand_ambiguous_alignments) then "--expand_ambiguous_alignments" else ""} \
      ~{if defined(guide_seq) then ("--guide_seq " +  '"' + guide_seq + '"') else ""} \
      ~{if defined(guide_name) then ("--guide_name " +  '"' + guide_name + '"') else ""} \
      ~{if defined(flexi_guide_seq) then ("--flexiguide_seq " +  '"' + flexi_guide_seq + '"') else ""} \
      ~{if defined(flexi_guide_homology) then ("--flexiguide_homology " +  '"' + flexi_guide_homology + '"') else ""} \
      ~{if defined(flexi_guide_name) then ("--flexiguide_name " +  '"' + flexi_guide_name + '"') else ""} \
      ~{if (discard_guide_positions_overhanging_amplicon_edge) then "--discard_guide_positions_overhanging_amplicon_edge" else ""} \
      ~{if defined(expected_hdr_amplicon_seq) then ("--expected_hdr_amplicon_seq " +  '"' + expected_hdr_amplicon_seq + '"') else ""} \
      ~{if defined(coding_seq) then ("--coding_seq " +  '"' + coding_seq + '"') else ""} \
      ~{if defined(min_average_read_quality) then ("--min_average_read_quality " +  '"' + min_average_read_quality + '"') else ""} \
      ~{if defined(min_single_bp_quality) then ("--min_single_bp_quality " +  '"' + min_single_bp_quality + '"') else ""} \
      ~{if defined(min_bp_quality_or_n) then ("--min_bp_quality_or_N " +  '"' + min_bp_quality_or_n + '"') else ""} \
      ~{if defined(file_prefix) then ("--file_prefix " +  '"' + file_prefix + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(output_folder) then ("--output_folder " +  '"' + output_folder + '"') else ""} \
      ~{if (split_interleaved_input) then "--split_interleaved_input" else ""} \
      ~{if (trim_sequences) then "--trim_sequences" else ""} \
      ~{if defined(trim_mo_matic_command) then ("--trimmomatic_command " +  '"' + trim_mo_matic_command + '"') else ""} \
      ~{if defined(trim_mo_matic_options_string) then ("--trimmomatic_options_string " +  '"' + trim_mo_matic_options_string + '"') else ""} \
      ~{if defined(flash_command) then ("--flash_command " +  '"' + flash_command + '"') else ""} \
      ~{if defined(min_paired_end_reads_overlap) then ("--min_paired_end_reads_overlap " +  '"' + min_paired_end_reads_overlap + '"') else ""} \
      ~{if defined(max_paired_end_reads_overlap) then ("--max_paired_end_reads_overlap " +  '"' + max_paired_end_reads_overlap + '"') else ""} \
      ~{if (stringent_flash_merging) then "--stringent_flash_merging" else ""} \
      ~{if defined(quantification_window_size) then ("--quantification_window_size " +  '"' + quantification_window_size + '"') else ""} \
      ~{if defined(quantification_window_center) then ("--quantification_window_center " +  '"' + quantification_window_center + '"') else ""} \
      ~{if defined(exclude_bp_from_left) then ("--exclude_bp_from_left " +  '"' + exclude_bp_from_left + '"') else ""} \
      ~{if defined(exclude_bp_from_right) then ("--exclude_bp_from_right " +  '"' + exclude_bp_from_right + '"') else ""} \
      ~{if (use_legacy_insertion_quantification) then "--use_legacy_insertion_quantification" else ""} \
      ~{if (ignore_substitutions) then "--ignore_substitutions" else ""} \
      ~{if (ignore_insertions) then "--ignore_insertions" else ""} \
      ~{if (ignore_deletions) then "--ignore_deletions" else ""} \
      ~{if (discard_in_del_reads) then "--discard_indel_reads" else ""} \
      ~{if defined(needleman_wunsch_gap_open) then ("--needleman_wunsch_gap_open " +  '"' + needleman_wunsch_gap_open + '"') else ""} \
      ~{if defined(needleman_wunsch_gap_extend) then ("--needleman_wunsch_gap_extend " +  '"' + needleman_wunsch_gap_extend + '"') else ""} \
      ~{if defined(needleman_wunsch_gap_incentive) then ("--needleman_wunsch_gap_incentive " +  '"' + needleman_wunsch_gap_incentive + '"') else ""} \
      ~{if defined(needleman_wunsch_aln_matrix_loc) then ("--needleman_wunsch_aln_matrix_loc " +  '"' + needleman_wunsch_aln_matrix_loc + '"') else ""} \
      ~{if (plot_histogram_outliers) then "--plot_histogram_outliers" else ""} \
      ~{if defined(offset_around_cut_to_plot) then ("--offset_around_cut_to_plot " +  '"' + offset_around_cut_to_plot + '"') else ""} \
      ~{if defined(min_frequency_alleles_around_cut_to_plot) then ("--min_frequency_alleles_around_cut_to_plot " +  '"' + min_frequency_alleles_around_cut_to_plot + '"') else ""} \
      ~{if (expand_allele_plots_by_quantification) then "--expand_allele_plots_by_quantification" else ""} \
      ~{if (allele_plot_pcts_only_for_assigned_reference) then "--allele_plot_pcts_only_for_assigned_reference" else ""} \
      ~{if defined(quantification_window_coordinates) then ("--quantification_window_coordinates " +  '"' + quantification_window_coordinates + '"') else ""} \
      ~{if defined(annotate_wild_type_allele) then ("--annotate_wildtype_allele " +  '"' + annotate_wild_type_allele + '"') else ""} \
      ~{if (keep_intermediate) then "--keep_intermediate" else ""} \
      ~{if (dump) then "--dump" else ""} \
      ~{if (write_detailed_allele_table) then "--write_detailed_allele_table" else ""} \
      ~{if (fast_q_output) then "--fastq_output" else ""} \
      ~{if defined(max_rows_alleles_around_cut_to_plot) then ("--max_rows_alleles_around_cut_to_plot " +  '"' + max_rows_alleles_around_cut_to_plot + '"') else ""} \
      ~{if (suppress_report) then "--suppress_report" else ""} \
      ~{if (place_report_in_output_folder) then "--place_report_in_output_folder" else ""} \
      ~{if (suppress_plots) then "--suppress_plots" else ""} \
      ~{if (base_editor_output) then "--base_editor_output" else ""} \
      ~{if defined(conversion_nuc_from) then ("--conversion_nuc_from " +  '"' + conversion_nuc_from + '"') else ""} \
      ~{if defined(conversion_nuc_to) then ("--conversion_nuc_to " +  '"' + conversion_nuc_to + '"') else ""} \
      ~{if defined(prime_editing_peg_rna_spacer_seq) then ("--prime_editing_pegRNA_spacer_seq " +  '"' + prime_editing_peg_rna_spacer_seq + '"') else ""} \
      ~{if defined(prime_editing_peg_rna_extension_seq) then ("--prime_editing_pegRNA_extension_seq " +  '"' + prime_editing_peg_rna_extension_seq + '"') else ""} \
      ~{if defined(prime_editing_peg_rna_extension_quantification_window_size) then ("--prime_editing_pegRNA_extension_quantification_window_size " +  '"' + prime_editing_peg_rna_extension_quantification_window_size + '"') else ""} \
      ~{if defined(prime_editing_peg_rna_scaffold_seq) then ("--prime_editing_pegRNA_scaffold_seq " +  '"' + prime_editing_peg_rna_scaffold_seq + '"') else ""} \
      ~{if defined(prime_editing_peg_rna_scaffold_min_match_length) then ("--prime_editing_pegRNA_scaffold_min_match_length " +  '"' + prime_editing_peg_rna_scaffold_min_match_length + '"') else ""} \
      ~{if defined(prime_editing_nicking_guide_seq) then ("--prime_editing_nicking_guide_seq " +  '"' + prime_editing_nicking_guide_seq + '"') else ""} \
      ~{if defined(prime_editing_override_prime_edited_ref_seq) then ("--prime_editing_override_prime_edited_ref_seq " +  '"' + prime_editing_override_prime_edited_ref_seq + '"') else ""} \
      ~{if (cris_presso_one_mode) then "--crispresso1_mode" else ""} \
      ~{if defined(dso_dn) then ("--dsODN " +  '"' + dso_dn + '"') else ""} \
      ~{if (auto) then "--auto" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (no_rerun) then "--no_rerun" else ""} \
      ~{if defined(bam_input) then ("--bam_input " +  '"' + bam_input + '"') else ""} \
      ~{if defined(bam_chr_loc) then ("--bam_chr_loc " +  '"' + bam_chr_loc + '"') else ""} \
      ~{if defined(batch_settings) then ("--batch_settings " +  '"' + batch_settings + '"') else ""} \
      ~{if (skip_failed) then "--skip_failed" else ""} \
      ~{if defined(min_reads_for_inclusion) then ("--min_reads_for_inclusion " +  '"' + min_reads_for_inclusion + '"') else ""} \
      ~{if defined(n_processes) then ("--n_processes " +  '"' + n_processes + '"') else ""} \
      ~{if defined(batch_output_folder) then ("--batch_output_folder " +  '"' + batch_output_folder + '"') else ""} \
      ~{if defined(cris_presso_command) then ("--crispresso_command " +  '"' + cris_presso_command + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/crispresso2:2.1.0--py27h3dcb392_0"
  }
  parameter_meta {
    analysis: "CRISPR/Cas9 outcomes from batch deep sequencing data-\\n_                                             _\\n'  )                                          '  )\\n.-'            _________________              .-'\\n(____          | __    ___ __    |            (____\\nC)|     \\         ||__) /\\ | /  |__||         C)|     \\\\n\\     /         ||__)/--\\| \\__|  ||           \\     /\\n\\___/          |_________________|            \\___/\\n[CRISPResso version 2.1.0]"
    fast_q_r_one: "First fastq file (default: )"
    fast_q_r_two: "Second fastq file for paired end reads (default: )"
    amplicon_seq: "Amplicon Sequence (can be comma-separated list of\\nmultiple sequences) (default: None)"
    amplicon_name: "Amplicon Name (can be comma-separated list of multiple\\nnames, corresponding to amplicon sequences given in\\n--amplicon_seq (default: Reference)"
    amplicon_min_alignment_score: "Amplicon Minimum Alignment Score; score between 0 and\\n100; sequences must have at least this homology score\\nwith the amplicon to be aligned (can be comma-\\nseparated list of multiple scores, corresponding to\\namplicon sequences given in --amplicon_seq) (default:\\n)"
    default_min_aln_score: "Default minimum homology score for a read to align to\\na reference amplicon (default: 60)"
    expand_ambiguous_alignments: "If more than one reference amplicon is given, reads\\nthat align to multiple reference amplicons will count\\nequally toward each amplicon. Default behavior is to\\nexclude ambiguous alignments. (default: False)"
    guide_seq: "sgRNA sequence, if more than one, please separate by\\ncommas. Note that the sgRNA needs to be input as the\\nguide RNA sequence (usually 20 nt) immediately\\nadjacent to but not including the PAM sequence (5' of\\nNGG for SpCas9). If the PAM is found on the opposite\\nstrand with respect to the Amplicon Sequence, ensure\\nthe sgRNA sequence is also found on the opposite\\nstrand. The CRISPResso convention is to depict the\\nexpected cleavage position using the value of the\\nparameter '--quantification_window_center' nucleotides\\nfrom the 3' end of the guide. In addition, the use of\\nalternate nucleases besides SpCas9 is supported. For\\nexample, if using the Cpf1 system, enter the sequence\\n(usually 20 nt) immediately 3' of the PAM sequence and\\nexplicitly set the '--cleavage_offset' parameter to 1,\\nsince the default setting of -3 is suitable only for\\nSpCas9. (default: )"
    guide_name: "sgRNA names, if more than one, please separate by\\ncommas. (default: )"
    flexi_guide_seq: "sgRNA sequence (flexible) (can be comma-separated list\\nof multiple flexiguides). The flexiguide sequence will\\nbe aligned to the amplicon sequence(s), as long as the\\nguide sequence has homology as set by\\n--flexiguide_homology. (default: None)"
    flexi_guide_homology: "flexiguides will yield guides in amplicons with at\\nleast this homology to the flexiguide sequence.\\n(default: 80)"
    flexi_guide_name: "flexiguide name (default: )"
    discard_guide_positions_overhanging_amplicon_edge: "If set, for guides that align to multiple positions,\\nguide positions will be discarded if plotting around\\nthose regions would included bp that extend beyond the\\nend of the amplicon. (default: False)"
    expected_hdr_amplicon_seq: "Amplicon sequence expected after HDR (default: )"
    coding_seq: "Subsequence/s of the amplicon sequence covering one or\\nmore coding sequences for frameshift analysis. If more\\nthan one (for example, split by intron/s), please\\nseparate by commas. (default: )"
    min_average_read_quality: "Minimum average quality score (phred33) to keep a read\\n(default: 0)"
    min_single_bp_quality: "Minimum single bp score (phred33) to keep a read\\n(default: 0)"
    min_bp_quality_or_n: "Bases with a quality score (phred33) less than this\\nvalue will be set to \\\"N\\\" (default: 0)"
    file_prefix: "File prefix for output plots and tables (default: )"
    name: "Output name of the report (default: the name is\\nobtained from the filename of the fastq file/s used in\\ninput) (default: )"
    output_folder: "Output folder to use for the analysis (default:\\ncurrent folder) (default: )"
    split_interleaved_input: "Splits a single fastq file containing paired end reads\\ninto two files before running CRISPResso (default:\\nFalse)"
    trim_sequences: "Enable the trimming of Illumina adapters with\\nTrimmomatic (default: False)"
    trim_mo_matic_command: "Command to run trimmomatic (default: trimmomatic)"
    trim_mo_matic_options_string: "Override options for Trimmomatic, e.g.\\n\\\"ILLUMINACLIP:/data/NexteraPE-PE.fa:0:90:10:0:true\\\"\\n(default: )"
    flash_command: "Command to run flash (default: flash)"
    min_paired_end_reads_overlap: "Parameter for the FLASH read merging step. Minimum\\nrequired overlap length between two reads to provide a\\nconfident overlap. (default: 10)"
    max_paired_end_reads_overlap: "Parameter for the FLASH merging step. Maximum overlap\\nlength expected in approximately 90% of read pairs.\\nPlease see the FLASH manual for more information.\\n(default: 100)"
    stringent_flash_merging: "Use stringent parameters for flash merging. In the\\ncase where flash could merge R1 and R2 reads\\nambiguously, the expected overlap is calculated as\\n2*average_read_length - amplicon_length. The flash\\nparameters for --min-overlap and --max-overlap will be\\nset to prefer merged reads with length within 10bp of\\nthe expected overlap. These values override the\\n--min_paired_end_reads_overlap or\\n--max_paired_end_reads_overlap CRISPResso parameters.\\n(default: False)"
    quantification_window_size: "Defines the size (in bp) of the quantification window\\nextending from the position specified by the \\\"--\\ncleavage_offset\\\" or \\\"--quantification_window_center\\\"\\nparameter in relation to the provided guide RNA\\nsequence(s) (--sgRNA). Mutations within this number of\\nbp from the quantification window center are used in\\nclassifying reads as modified or unmodified. A value\\nof 0 disables this window and indels in the entire\\namplicon are considered. Default is 1, 1bp on each\\nside of the cleavage position for a total length of\\n2bp. Multiple quantification window sizes\\n(corresponding to each guide specified by --guide_seq)\\ncan be specified with a comma-separated list.\\n(default: 1)"
    quantification_window_center: "Center of quantification window to use within respect\\nto the 3' end of the provided sgRNA sequence. Remember\\nthat the sgRNA sequence must be entered without the\\nPAM. For cleaving nucleases, this is the predicted\\ncleavage position. The default is -3 and is suitable\\nfor the Cas9 system. For alternate nucleases, other\\ncleavage offsets may be appropriate, for example, if\\nusing Cpf1 this parameter would be set to 1. For base\\neditors, this could be set to -17 to only include\\nmutations near the 5' end of the sgRNA. Multiple\\nquantification window centers (corresponding to each\\nguide specified by --guide_seq) can be specified with\\na comma-separated list. (default: -3)"
    exclude_bp_from_left: "Exclude bp from the left side of the amplicon sequence\\nfor the quantification of the indels (default: 15)"
    exclude_bp_from_right: "Exclude bp from the right side of the amplicon\\nsequence for the quantification of the indels\\n(default: 15)"
    use_legacy_insertion_quantification: "If set, the legacy insertion quantification method\\nwill be used (i.e. with a 1bp quantification window,\\nindels at the cut site and 1bp away from the cut site\\nwould be quantified). By default (if this parameter is\\nnot set) with a 1bp quantification window, only\\ninsertions at the cut site will be quantified.\\n(default: False)"
    ignore_substitutions: "Ignore substitutions events for the quantification and\\nvisualization (default: False)"
    ignore_insertions: "Ignore insertions events for the quantification and\\nvisualization (default: False)"
    ignore_deletions: "Ignore deletions events for the quantification and\\nvisualization (default: False)"
    discard_in_del_reads: "Discard reads with indels in the quantification window\\nfrom analysis (default: False)"
    needleman_wunsch_gap_open: "Gap open option for Needleman-Wunsch alignment\\n(default: -20)"
    needleman_wunsch_gap_extend: "Gap extend option for Needleman-Wunsch alignment\\n(default: -2)"
    needleman_wunsch_gap_incentive: "Gap incentive value for inserting indels at cut sites\\n(default: 1)"
    needleman_wunsch_aln_matrix_loc: "Location of the matrix specifying substitution scores\\nin the NCBI format (see\\nftp://ftp.ncbi.nih.gov/blast/matrices/) (default:\\nEDNAFULL)"
    plot_histogram_outliers: "If set, all values will be shown on histograms. By\\ndefault (if unset), histogram ranges are limited to\\nplotting data within the 99 percentile. (default:\\nFalse)"
    offset_around_cut_to_plot: "Defines the size of the window extending from the\\nquantification window center to plot. Nucleotides\\nwithin plot_window_size of the\\nquantification_window_center for each guide are\\nplotted. (default: 20)"
    min_frequency_alleles_around_cut_to_plot: "Minimum % reads required to report an allele in the\\nalleles table plot. (default: 0.2)"
    expand_allele_plots_by_quantification: "If set, alleles with different modifications in the\\nquantification window (but not necessarily in the\\nplotting window (e.g. for another sgRNA)) are plotted\\non separate lines, even though they may have the same\\napparent sequence. To force the allele plot and the\\nallele table to be the same, set this parameter. If\\nunset, all alleles with the same sequence will be\\ncollapsed into one row. (default: False)"
    allele_plot_pcts_only_for_assigned_reference: "If set, in the allele plots, the percentages will show\\nthe percentage as a percent of reads aligned to the\\nassigned reference. Default behavior is to show\\npercentage as a percent of all reads. (default: False)"
    quantification_window_coordinates: "Bp positions in the amplicon sequence specifying the\\nquantification window. This parameter overrides values\\nof the \\\"--quantification_window_center\\\", \\\"--\\ncleavage_offset\\\", \\\"--window_around_sgrna\\\" or \\\"--\\nwindow_around_sgrna\\\" values. Any indels/substitutions\\noutside this window are excluded. Indexes are 0-based,\\nmeaning that the first nucleotide is position 0.\\nRanges are separted by the dash sign (e.g. \\\"start-\\nstop\\\"), and multiple ranges can be separated by the\\nunderscore (_). A value of 0 disables this filter.\\n(can be comma-separated list of values, corresponding\\nto amplicon sequences given in --amplicon_seq e.g.\\n5-10,5-10_20-30 would specify the 5th-10th bp in the\\nfirst reference and the 5th-10th and 20th-30th bp in\\nthe second reference) (default: None)"
    annotate_wild_type_allele: "Wildtype alleles in the allele table plots will be\\nmarked with this string (e.g. **). (default: )"
    keep_intermediate: "Keep all the intermediate files (default: False)"
    dump: "Dump numpy arrays and pandas dataframes to file for\\ndebugging purposes (default: False)"
    write_detailed_allele_table: "If set, a detailed allele table will be written\\nincluding alignment scores for each read sequence.\\n(default: False)"
    fast_q_output: "If set, a fastq file with annotations for each read\\nwill be produced. (default: False)"
    max_rows_alleles_around_cut_to_plot: "Maximum number of rows to report in the alleles table\\nplot. (default: 50)"
    suppress_report: "Suppress output report (default: False)"
    place_report_in_output_folder: "If true, report will be written inside the CRISPResso\\noutput folder. By default, the report will be written\\none directory up from the report output. (default:\\nFalse)"
    suppress_plots: "Suppress output plots (default: False)"
    base_editor_output: "Outputs plots and tables to aid in analysis of base\\neditor studies. (default: False)"
    conversion_nuc_from: "For base editor plots, this is the nucleotide targeted\\nby the base editor (default: C)"
    conversion_nuc_to: "For base editor plots, this is the nucleotide produced\\nby the base editor (default: T)"
    prime_editing_peg_rna_spacer_seq: "pegRNA spacer sgRNA sequence used in prime editing.\\nThe spacer should not include the PAM sequence. The\\nsequence should be given in the RNA 5'->3' order, so\\nfor Cas9, the PAM would be on the right side of the\\ngiven sequence. (default: )"
    prime_editing_peg_rna_extension_seq: "Extension sequence used in prime editing. The sequence\\nshould be given in the RNA 5'->3' order, such that the\\nsequence starts with the RT template including the\\nedit, followed by the Primer-binding site (PBS).\\n(default: )"
    prime_editing_peg_rna_extension_quantification_window_size: "Quantification window size (in bp) at flap site for\\nmeasuring modifications anchored at the right side of\\nthe extension sequence. Similar to the\\n--quantification_window parameter, the total length of\\nthe quantification window will be 2x this parameter.\\nDefault: 5bp (10bp total window size) (default: 5)"
    prime_editing_peg_rna_scaffold_seq: "If given, reads containing any of this scaffold\\nsequence before extension sequence (provided by\\n--prime_editing_extension_seq) will be classified as\\n'Scaffold-incorporated'. The sequence should be given\\nin the 5'->3' order such that the RT template directly\\nfollows this sequence. A common value is\\n'GGCACCGAGUCGGUGC'. (default: )"
    prime_editing_peg_rna_scaffold_min_match_length: "Minimum number of bases matching scaffold sequence for\\nthe read to be counted as 'Scaffold-incorporated'. If\\nthe scaffold sequence matches the reference sequence\\nat the incorporation site, the minimum number of bases\\nto match will be minimally increased (beyond this\\nparameter) to disambiguate between prime-edited and\\nscaffold-incorporated sequences. (default: 1)"
    prime_editing_nicking_guide_seq: "Nicking sgRNA sequence used in prime editing. The\\nsgRNA should not include the PAM sequence. The\\nsequence should be given in the RNA 5'->3' order, so\\nfor Cas9, the PAM would be on the right side of the\\nsequence (default: )"
    prime_editing_override_prime_edited_ref_seq: "If given, this sequence will be used as the prime-\\nedited reference sequence. This may be useful if the\\nprime-edited reference sequence has large indels or\\nthe algorithm cannot otherwise infer the correct\\nreference sequence. (default: )"
    cris_presso_one_mode: "Parameter usage as in CRISPResso 1 (default: False)"
    dso_dn: "Label reads with the dsODN sequence provided (default:\\n)"
    auto: "Infer amplicon sequence from most common reads\\n(default: False)"
    debug: "Show debug messages (default: False)"
    no_rerun: "Don't rerun CRISPResso2 if a run using the same\\nparameters has already been finished. (default: False)"
    bam_input: "Aligned reads for processing in bam format (default: )"
    bam_chr_loc: "Chromosome location in bam for reads to process. For\\nexample: \\\"chr1:50-100\\\" or \\\"chrX\\\". (default: )"
    batch_settings: "Settings file for batch. Must be tab-separated text\\nfile. The header row contains CRISPResso parameters\\n(e.g., fastq_r1, fastq_r2, amplicon_seq, and other\\noptional parameters). Each following row sets\\nparameters for an additional batch. (default: None)"
    skip_failed: "Continue with batch analysis even if one sample fails\\n(default: False)"
    min_reads_for_inclusion: "Minimum number of reads for a batch to be included in\\nthe batch summary (default: 0)"
    n_processes: "Specify the number of processes to use for\\nquantification. Please use with caution since\\nincreasing this parameter will increase the memory\\nrequired to run CRISPResso. (default: 1)"
    batch_output_folder: "Directory where batch analysis output will be stored\\n(default: None)"
    cris_presso_command: "CRISPResso command to call (default: CRISPResso)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_file_prefix = "${in_file_prefix}"
    Directory out_output_folder = "${in_output_folder}"
    Directory out_place_report_in_output_folder = "${in_place_report_in_output_folder}"
    Directory out_batch_output_folder = "${in_batch_output_folder}"
  }
}
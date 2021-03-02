class: CommandLineTool
id: CRISPRessoPooled.cwl
inputs:
- id: in_analysis
  doc: "CRISPR/Cas9 outcomes from POOLED deep sequencing data-\n_                \
    \                                 _\n'  )                                    \
    \          '  )\n.-'           _______________________             .-'\n(____\
    \         | __  __  __     __ __  |           (____\nC)|     \\        ||__)/\
    \  \\/  \\|  |_ |  \\ |        C)|     \\\n\\     /        ||   \\__/\\__/|__|__|__/\
    \ |          \\     /\n\\___/         |_______________________|           \\___/\n\
    [CRISPResso version 2.0.45]\n[Kendell Clement and Luca Pinello 2020]\n[For support\
    \ contact kclement@mgh.harvard.edu]"
  type: double?
  inputBinding:
    prefix: -Analysis
- id: in_fast_q_r_one
  doc: 'First fastq file (default: )'
  type: long?
  inputBinding:
    prefix: --fastq_r1
- id: in_fast_q_r_two
  doc: 'Second fastq file for paired end reads (default: )'
  type: long?
  inputBinding:
    prefix: --fastq_r2
- id: in_amplicon_seq
  doc: "Amplicon Sequence (can be comma-separated list of\nmultiple sequences) (default:\
    \ None)"
  type: string?
  inputBinding:
    prefix: --amplicon_seq
- id: in_amplicon_name
  doc: "Amplicon Name (can be comma-separated list of multiple\nnames, corresponding\
    \ to amplicon sequences given in\n--amplicon_seq (default: Reference)"
  type: string?
  inputBinding:
    prefix: --amplicon_name
- id: in_amplicon_min_alignment_score
  doc: "Amplicon Minimum Alignment Score; score between 0 and\n100; sequences must\
    \ have at least this homology score\nwith the amplicon to be aligned (can be comma-\n\
    separated list of multiple scores, corresponding to\namplicon sequences given\
    \ in --amplicon_seq) (default:\n)"
  type: long?
  inputBinding:
    prefix: --amplicon_min_alignment_score
- id: in_default_min_aln_score
  doc: "Default minimum homology score for a read to align to\na reference amplicon\
    \ (default: 60)"
  type: long?
  inputBinding:
    prefix: --default_min_aln_score
- id: in_expand_ambiguous_alignments
  doc: "If more than one reference amplicon is given, reads\nthat align to multiple\
    \ reference amplicons will count\nequally toward each amplicon. Default behavior\
    \ is to\nexclude ambiguous alignments. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --expand_ambiguous_alignments
- id: in_guide_seq
  doc: "sgRNA sequence, if more than one, please separate by\ncommas. Note that the\
    \ sgRNA needs to be input as the\nguide RNA sequence (usually 20 nt) immediately\n\
    adjacent to but not including the PAM sequence (5' of\nNGG for SpCas9). If the\
    \ PAM is found on the opposite\nstrand with respect to the Amplicon Sequence,\
    \ ensure\nthe sgRNA sequence is also found on the opposite\nstrand. The CRISPResso\
    \ convention is to depict the\nexpected cleavage position using the value of the\n\
    parameter '--quantification_window_center' nucleotides\nfrom the 3' end of the\
    \ guide. In addition, the use of\nalternate nucleases besides SpCas9 is supported.\
    \ For\nexample, if using the Cpf1 system, enter the sequence\n(usually 20 nt)\
    \ immediately 3' of the PAM sequence and\nexplicitly set the '--cleavage_offset'\
    \ parameter to 1,\nsince the default setting of -3 is suitable only for\nSpCas9.\
    \ (default: )"
  type: long?
  inputBinding:
    prefix: --guide_seq
- id: in_guide_name
  doc: "sgRNA names, if more than one, please separate by\ncommas. (default: )"
  type: string?
  inputBinding:
    prefix: --guide_name
- id: in_flexi_guide_seq
  doc: "sgRNA sequence (flexible) (can be comma-separated list\nof multiple flexiguides).\
    \ The flexiguide sequence will\nbe aligned to the amplicon sequence(s), as long\
    \ as the\nguide sequence has homology as set by\n--flexiguide_homology. (default:\
    \ None)"
  type: string?
  inputBinding:
    prefix: --flexiguide_seq
- id: in_flexi_guide_homology
  doc: "flexiguides will yield guides in amplicons with at\nleast this homology to\
    \ the flexiguide sequence.\n(default: 80)"
  type: long?
  inputBinding:
    prefix: --flexiguide_homology
- id: in_flexi_guide_name
  doc: 'flexiguide name (default: )'
  type: string?
  inputBinding:
    prefix: --flexiguide_name
- id: in_discard_guide_positions_overhanging_amplicon_edge
  doc: "If set, for guides that align to multiple positions,\nguide positions will\
    \ be discarded if plotting around\nthose regions would included bp that extend\
    \ beyond the\nend of the amplicon. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --discard_guide_positions_overhanging_amplicon_edge
- id: in_expected_hdr_amplicon_seq
  doc: 'Amplicon sequence expected after HDR (default: )'
  type: string?
  inputBinding:
    prefix: --expected_hdr_amplicon_seq
- id: in_coding_seq
  doc: "Subsequence/s of the amplicon sequence covering one or\nmore coding sequences\
    \ for frameshift analysis. If more\nthan one (for example, split by intron/s),\
    \ please\nseparate by commas. (default: )"
  type: string?
  inputBinding:
    prefix: --coding_seq
- id: in_min_average_read_quality
  doc: "Minimum average quality score (phred33) to keep a read\n(default: 0)"
  type: long?
  inputBinding:
    prefix: --min_average_read_quality
- id: in_min_single_bp_quality
  doc: "Minimum single bp score (phred33) to keep a read\n(default: 0)"
  type: long?
  inputBinding:
    prefix: --min_single_bp_quality
- id: in_min_bp_quality_or_n
  doc: "Bases with a quality score (phred33) less than this\nvalue will be set to\
    \ \"N\" (default: 0)"
  type: long?
  inputBinding:
    prefix: --min_bp_quality_or_N
- id: in_file_prefix
  doc: 'File prefix for output plots and tables (default: )'
  type: File?
  inputBinding:
    prefix: --file_prefix
- id: in_name
  doc: "Output name of the report (default: the name is\nobtained from the filename\
    \ of the fastq file/s used in\ninput) (default: )"
  type: File?
  inputBinding:
    prefix: --name
- id: in_output_folder
  doc: "Output folder to use for the analysis (default:\ncurrent folder) (default:\
    \ )"
  type: Directory?
  inputBinding:
    prefix: --output_folder
- id: in_split_interleaved_input
  doc: "Splits a single fastq file containing paired end reads\ninto two files before\
    \ running CRISPResso (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --split_interleaved_input
- id: in_trim_sequences
  doc: "Enable the trimming of Illumina adapters with\nTrimmomatic (default: False)"
  type: boolean?
  inputBinding:
    prefix: --trim_sequences
- id: in_trim_mo_matic_command
  doc: 'Command to run trimmomatic (default: trimmomatic)'
  type: string?
  inputBinding:
    prefix: --trimmomatic_command
- id: in_trim_mo_matic_options_string
  doc: "Override options for Trimmomatic, e.g.\n\"ILLUMINACLIP:/data/NexteraPE-PE.fa:0:90:10:0:true\"\
    \n(default: )"
  type: long?
  inputBinding:
    prefix: --trimmomatic_options_string
- id: in_flash_command
  doc: 'Command to run flash (default: flash)'
  type: string?
  inputBinding:
    prefix: --flash_command
- id: in_min_paired_end_reads_overlap
  doc: "Parameter for the FLASH read merging step. Minimum\nrequired overlap length\
    \ between two reads to provide a\nconfident overlap. (default: 10)"
  type: long?
  inputBinding:
    prefix: --min_paired_end_reads_overlap
- id: in_max_paired_end_reads_overlap
  doc: "Parameter for the FLASH merging step. Maximum overlap\nlength expected in\
    \ approximately 90% of read pairs.\nPlease see the FLASH manual for more information.\n\
    (default: 100)"
  type: long?
  inputBinding:
    prefix: --max_paired_end_reads_overlap
- id: in_stringent_flash_merging
  doc: "Use stringent parameters for flash merging. In the\ncase where flash could\
    \ merge R1 and R2 reads\nambiguously, the expected overlap is calculated as\n\
    2*average_read_length - amplicon_length. The flash\nparameters for --min-overlap\
    \ and --max-overlap will be\nset to prefer merged reads with length within 10bp\
    \ of\nthe expected overlap. These values override the\n--min_paired_end_reads_overlap\
    \ or\n--max_paired_end_reads_overlap CRISPResso parameters.\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --stringent_flash_merging
- id: in_quantification_window_size
  doc: "Defines the size (in bp) of the quantification window\nextending from the\
    \ position specified by the \"--\ncleavage_offset\" or \"--quantification_window_center\"\
    \nparameter in relation to the provided guide RNA\nsequence(s) (--sgRNA). Mutations\
    \ within this number of\nbp from the quantification window center are used in\n\
    classifying reads as modified or unmodified. A value\nof 0 disables this window\
    \ and indels in the entire\namplicon are considered. Default is 1, 1bp on each\n\
    side of the cleavage position for a total length of\n2bp. Multiple quantification\
    \ window sizes\n(corresponding to each guide specified by --guide_seq)\ncan be\
    \ specified with a comma-separated list.\n(default: 1)"
  type: long?
  inputBinding:
    prefix: --quantification_window_size
- id: in_quantification_window_center
  doc: "Center of quantification window to use within respect\nto the 3' end of the\
    \ provided sgRNA sequence. Remember\nthat the sgRNA sequence must be entered without\
    \ the\nPAM. For cleaving nucleases, this is the predicted\ncleavage position.\
    \ The default is -3 and is suitable\nfor the Cas9 system. For alternate nucleases,\
    \ other\ncleavage offsets may be appropriate, for example, if\nusing Cpf1 this\
    \ parameter would be set to 1. For base\neditors, this could be set to -17 to\
    \ only include\nmutations near the 5' end of the sgRNA. Multiple\nquantification\
    \ window centers (corresponding to each\nguide specified by --guide_seq) can be\
    \ specified with\na comma-separated list. (default: -3)"
  type: long?
  inputBinding:
    prefix: --quantification_window_center
- id: in_exclude_bp_from_left
  doc: "Exclude bp from the left side of the amplicon sequence\nfor the quantification\
    \ of the indels (default: 15)"
  type: long?
  inputBinding:
    prefix: --exclude_bp_from_left
- id: in_exclude_bp_from_right
  doc: "Exclude bp from the right side of the amplicon\nsequence for the quantification\
    \ of the indels\n(default: 15)"
  type: long?
  inputBinding:
    prefix: --exclude_bp_from_right
- id: in_ignore_substitutions
  doc: "Ignore substitutions events for the quantification and\nvisualization (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --ignore_substitutions
- id: in_ignore_insertions
  doc: "Ignore insertions events for the quantification and\nvisualization (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --ignore_insertions
- id: in_ignore_deletions
  doc: "Ignore deletions events for the quantification and\nvisualization (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --ignore_deletions
- id: in_discard_in_del_reads
  doc: "Discard reads with indels in the quantification window\nfrom analysis (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --discard_indel_reads
- id: in_needleman_wunsch_gap_open
  doc: "Gap open option for Needleman-Wunsch alignment\n(default: -20)"
  type: long?
  inputBinding:
    prefix: --needleman_wunsch_gap_open
- id: in_needleman_wunsch_gap_extend
  doc: "Gap extend option for Needleman-Wunsch alignment\n(default: -2)"
  type: long?
  inputBinding:
    prefix: --needleman_wunsch_gap_extend
- id: in_needleman_wunsch_gap_incentive
  doc: "Gap incentive value for inserting indels at cut sites\n(default: 1)"
  type: long?
  inputBinding:
    prefix: --needleman_wunsch_gap_incentive
- id: in_needleman_wunsch_aln_matrix_loc
  doc: "Location of the matrix specifying substitution scores\nin the NCBI format\
    \ (see\nftp://ftp.ncbi.nih.gov/blast/matrices/) (default:\nEDNAFULL)"
  type: string?
  inputBinding:
    prefix: --needleman_wunsch_aln_matrix_loc
- id: in_plot_histogram_outliers
  doc: "If set, all values will be shown on histograms. By\ndefault (if unset), histogram\
    \ ranges are limited to\nplotting data within the 99 percentile. (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --plot_histogram_outliers
- id: in_offset_around_cut_to_plot
  doc: "Defines the size of the window extending from the\nquantification window center\
    \ to plot. Nucleotides\nwithin plot_window_size of the\nquantification_window_center\
    \ for each guide are\nplotted. (default: 20)"
  type: long?
  inputBinding:
    prefix: --offset_around_cut_to_plot
- id: in_min_frequency_alleles_around_cut_to_plot
  doc: "Minimum % reads required to report an allele in the\nalleles table plot. (default:\
    \ 0.2)"
  type: long?
  inputBinding:
    prefix: --min_frequency_alleles_around_cut_to_plot
- id: in_expand_allele_plots_by_quantification
  doc: "If set, alleles with different modifications in the\nquantification window\
    \ (but not necessarily in the\nplotting window (e.g. for another sgRNA)) are plotted\n\
    on separate lines, even though they may have the same\napparent sequence. To force\
    \ the allele plot and the\nallele table to be the same, set this parameter. If\n\
    unset, all alleles with the same sequence will be\ncollapsed into one row. (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --expand_allele_plots_by_quantification
- id: in_allele_plot_pcts_only_for_assigned_reference
  doc: "If set, in the allele plots, the percentages will show\nthe percentage as\
    \ a percent of reads aligned to the\nassigned reference. Default behavior is to\
    \ show\npercentage as a percent of all reads. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --allele_plot_pcts_only_for_assigned_reference
- id: in_quantification_window_coordinates
  doc: "Bp positions in the amplicon sequence specifying the\nquantification window.\
    \ This parameter overrides values\nof the \"--quantification_window_center\",\
    \ \"--\ncleavage_offset\", \"--window_around_sgrna\" or \"--\nwindow_around_sgrna\"\
    \ values. Any indels/substitutions\noutside this window are excluded. Indexes\
    \ are 0-based,\nmeaning that the first nucleotide is position 0.\nRanges are separted\
    \ by the dash sign (e.g. \"start-\nstop\"), and multiple ranges can be separated\
    \ by the\nunderscore (_). A value of 0 disables this filter.\n(can be comma-separated\
    \ list of values, corresponding\nto amplicon sequences given in --amplicon_seq\
    \ e.g.\n5-10,5-10_20-30 would specify the 5th-10th bp in the\nfirst reference\
    \ and the 5th-10th and 20th-30th bp in\nthe second reference) (default: None)"
  type: long?
  inputBinding:
    prefix: --quantification_window_coordinates
- id: in_annotate_wild_type_allele
  doc: "Wildtype alleles in the allele table plots will be\nmarked with this string\
    \ (e.g. **). (default: )"
  type: string?
  inputBinding:
    prefix: --annotate_wildtype_allele
- id: in_keep_intermediate
  doc: 'Keep all the intermediate files (default: False)'
  type: boolean?
  inputBinding:
    prefix: --keep_intermediate
- id: in_dump
  doc: "Dump numpy arrays and pandas dataframes to file for\ndebugging purposes (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --dump
- id: in_write_detailed_allele_table
  doc: "If set, a detailed allele table will be written\nincluding alignment scores\
    \ for each read sequence.\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --write_detailed_allele_table
- id: in_fast_q_output
  doc: "If set, a fastq file with annotations for each read\nwill be produced. (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --fastq_output
- id: in_max_rows_alleles_around_cut_to_plot
  doc: "Maximum number of rows to report in the alleles table\nplot. (default: 50)"
  type: long?
  inputBinding:
    prefix: --max_rows_alleles_around_cut_to_plot
- id: in_suppress_report
  doc: 'Suppress output report (default: False)'
  type: boolean?
  inputBinding:
    prefix: --suppress_report
- id: in_place_report_in_output_folder
  doc: "If true, report will be written inside the CRISPResso\noutput folder. By default,\
    \ the report will be written\none directory up from the report output. (default:\n\
    False)"
  type: Directory?
  inputBinding:
    prefix: --place_report_in_output_folder
- id: in_suppress_plots
  doc: 'Suppress output plots (default: False)'
  type: boolean?
  inputBinding:
    prefix: --suppress_plots
- id: in_base_editor_output
  doc: "Outputs plots and tables to aid in analysis of base\neditor studies. (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --base_editor_output
- id: in_conversion_nuc_from
  doc: "For base editor plots, this is the nucleotide targeted\nby the base editor\
    \ (default: C)"
  type: string?
  inputBinding:
    prefix: --conversion_nuc_from
- id: in_conversion_nuc_to
  doc: "For base editor plots, this is the nucleotide produced\nby the base editor\
    \ (default: T)"
  type: string?
  inputBinding:
    prefix: --conversion_nuc_to
- id: in_prime_editing_peg_rna_spacer_seq
  doc: "pegRNA spacer sgRNA sequence used in prime editing.\nThe spacer should not\
    \ include the PAM sequence. The\nsequence should be given in the RNA 5'->3' order,\
    \ so\nfor Cas9, the PAM would be on the right side of the\ngiven sequence. (default:\
    \ )"
  type: long?
  inputBinding:
    prefix: --prime_editing_pegRNA_spacer_seq
- id: in_prime_editing_peg_rna_extension_seq
  doc: "Extension sequence used in prime editing. The sequence\nshould be given in\
    \ the RNA 5'->3' order, such that the\nsequence starts with the RT template including\
    \ the\nedit, followed by the Primer-binding site (PBS).\n(default: )"
  type: long?
  inputBinding:
    prefix: --prime_editing_pegRNA_extension_seq
- id: in_prime_editing_peg_rna_extension_quantification_window_size
  doc: "Quantification window size (in bp) at flap site for\nmeasuring modifications\
    \ anchored at the right side of\nthe extension sequence. Similar to the\n--quantification_window\
    \ parameter, the total length of\nthe quantification window will be 2x this parameter.\n\
    Default: 5bp (10bp total window size) (default: 5)"
  type: long?
  inputBinding:
    prefix: --prime_editing_pegRNA_extension_quantification_window_size
- id: in_prime_editing_peg_rna_scaffold_seq
  doc: "If given, reads containing any of this scaffold\nsequence before extension\
    \ sequence (provided by\n--prime_editing_extension_seq) will be classified as\n\
    'Scaffold-incorporated'. The sequence should be given\nin the 5'->3' order such\
    \ that the RT template directly\nfollows this sequence. A common value is\n'GGCACCGAGUCGGUGC'.\
    \ (default: )"
  type: long?
  inputBinding:
    prefix: --prime_editing_pegRNA_scaffold_seq
- id: in_prime_editing_peg_rna_scaffold_min_match_length
  doc: "Minimum number of bases matching scaffold sequence for\nthe read to be counted\
    \ as 'Scaffold-incorporated'. If\nthe scaffold sequence matches the reference\
    \ sequence\nat the incorporation site, the minimum number of bases\nto match will\
    \ be minimally increased (beyond this\nparameter) to disambiguate between prime-edited\
    \ and\nscaffold-incorporated sequences. (default: 1)"
  type: long?
  inputBinding:
    prefix: --prime_editing_pegRNA_scaffold_min_match_length
- id: in_prime_editing_nicking_guide_seq
  doc: "Nicking sgRNA sequence used in prime editing. The\nsgRNA should not include\
    \ the PAM sequence. The\nsequence should be given in the RNA 5'->3' order, so\n\
    for Cas9, the PAM would be on the right side of the\nsequence (default: )"
  type: long?
  inputBinding:
    prefix: --prime_editing_nicking_guide_seq
- id: in_prime_editing_override_prime_edited_ref_seq
  doc: "If given, this sequence will be used as the prime-\nedited reference sequence.\
    \ This may be useful if the\nprime-edited reference sequence has large indels\
    \ or\nthe algorithm cannot otherwise infer the correct\nreference sequence. (default:\
    \ )"
  type: string?
  inputBinding:
    prefix: --prime_editing_override_prime_edited_ref_seq
- id: in_cris_presso_one_mode
  doc: 'Parameter usage as in CRISPResso 1 (default: False)'
  type: boolean?
  inputBinding:
    prefix: --crispresso1_mode
- id: in_dso_dn
  doc: "Label reads with the dsODN sequence provided (default:\n)"
  type: string?
  inputBinding:
    prefix: --dsODN
- id: in_auto
  doc: "Infer amplicon sequence from most common reads\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --auto
- id: in_debug
  doc: 'Show debug messages (default: False)'
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_no_rerun
  doc: "Don't rerun CRISPResso2 if a run using the same\nparameters has already been\
    \ finished. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --no_rerun
- id: in_bam_input
  doc: 'Aligned reads for processing in bam format (default: )'
  type: string?
  inputBinding:
    prefix: --bam_input
- id: in_bam_chr_loc
  doc: "Chromosome location in bam for reads to process. For\nexample: \"chr1:50-100\"\
    \ or \"chrX\". (default: )"
  type: long?
  inputBinding:
    prefix: --bam_chr_loc
- id: in_amplicons_file
  doc: "Amplicons description file. This file is a tab-\ndelimited text file with\
    \ up to 5 columns (2 required):\nAMPLICON_NAME: an identifier for the amplicon\
    \ (must be\nunique) AMPLICON_SEQUENCE: amplicon sequence used in\nthe experiment\
    \ sgRNA_SEQUENCE (OPTIONAL): sgRNA\nsequence used for this amplicon without the\
    \ PAM\nsequence. Multiple guides can be given separated by\ncommas and not spaces.\
    \ If not available enter NA.\nEXPECTED_AMPLICON_AFTER_HDR (OPTIONAL): expected\n\
    amplicon sequence in case of HDR. If not available\nenter NA. CODING_SEQUENCE\
    \ (OPTIONAL): Subsequence(s)\nof the amplicon corresponding to coding sequences.\
    \ If\nmore than one separate them by commas and not spaces.\nIf not available\
    \ enter NA. (default: )"
  type: File?
  inputBinding:
    prefix: --amplicons_file
- id: in_gene_annotations
  doc: "Gene Annotation Table from UCSC Genome Browser Tables\n(http://genome.ucsc.edu/cgi-\n\
    bin/hgTables?command=start), please select as table\n\"knownGene\", as output\
    \ format \"all fields from\nselected table\" and as file returned \"gzip compressed\"\
    \n(default: )"
  type: File?
  inputBinding:
    prefix: --gene_annotations
- id: in_n_processes
  doc: "Specify the number of processes to use for analysis.\nPlease use with caution\
    \ since increasing this\nparameter will significantly increase the memory\nrequired\
    \ to run CRISPResso. Can be set to 'max'.\n(default: 1)"
  type: long?
  inputBinding:
    prefix: --n_processes
- id: in_bowtie_two_index
  doc: "Basename of Bowtie2 index for the reference genome\n(default: )"
  type: long?
  inputBinding:
    prefix: --bowtie2_index
- id: in_bowtie_two_options_string
  doc: "Override options for the Bowtie2 alignment command\n(default: -k 1 --end-to-end\
    \ -N 0 --np 0 )"
  type: long?
  inputBinding:
    prefix: --bowtie2_options_string
- id: in_min_reads_to_use_region
  doc: "Minimum number of reads that align to a region to\nperform the CRISPResso\
    \ analysis (default: 1000)"
  type: long?
  inputBinding:
    prefix: --min_reads_to_use_region
- id: in_skip_failed
  doc: "Continue with pooled analysis even if one sample fails\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --skip_failed
- id: in_skip_reporting_problematic_regions
  doc: "Skip reporting of problematic regions. By default,\nwhen both amplicons (-f)\
    \ and genome (-x) are provided,\nproblematic reads that align to the genome but\
    \ to\npositions other than where the amplicons align are\nreported as problematic\
    \ (default: False)"
  type: boolean?
  inputBinding:
    prefix: --skip_reporting_problematic_regions
- id: in_cris_presso_command
  doc: 'CRISPResso command to call (default: CRISPResso)'
  type: string?
  inputBinding:
    prefix: --crispresso_command
- id: in_compile_post_run_references
  doc: "If set, a file will be produced which compiles the\nreference sequences of\
    \ frequent amplicons. (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --compile_postrun_references
- id: in_compile_post_run_reference_allele_cut_off
  doc: "Only alleles with at least this percentage frequency\nin the population will\
    \ be reported in the postrun\nanalysis. This parameter is given as a percent,\
    \ so 30\nis 30%. (default: 30)"
  type: long?
  inputBinding:
    prefix: --compile_postrun_reference_allele_cutoff
- id: in_alternate_alleles
  doc: "Path to tab-separated file with alternate allele\nsequences for pooled experiments.\
    \ This file has the\ncolumns \"region_name\",\"reference_seqs\", and\n\"reference_names\"\
    \ and gives the reference sequences of\nalternate alleles that will be passed\
    \ to CRISPResso\nfor each individual region for allelic analysis.\nMultiple reference\
    \ alleles and reference names for a\ngiven region name are separated by commas\
    \ (no spaces).\n(default: )\n"
  type: File?
  inputBinding:
    prefix: --alternate_alleles
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_file_prefix
  doc: 'File prefix for output plots and tables (default: )'
  type: File?
  outputBinding:
    glob: $(inputs.in_file_prefix)
- id: out_output_folder
  doc: "Output folder to use for the analysis (default:\ncurrent folder) (default:\
    \ )"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_folder)
- id: out_place_report_in_output_folder
  doc: "If true, report will be written inside the CRISPResso\noutput folder. By default,\
    \ the report will be written\none directory up from the report output. (default:\n\
    False)"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_place_report_in_output_folder)
- id: out_gene_annotations
  doc: "Gene Annotation Table from UCSC Genome Browser Tables\n(http://genome.ucsc.edu/cgi-\n\
    bin/hgTables?command=start), please select as table\n\"knownGene\", as output\
    \ format \"all fields from\nselected table\" and as file returned \"gzip compressed\"\
    \n(default: )"
  type: File?
  outputBinding:
    glob: $(inputs.in_gene_annotations)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/crispresso2:2.0.45--py27h3dcb392_0
cwlVersion: v1.1
baseCommand:
- CRISPRessoPooled

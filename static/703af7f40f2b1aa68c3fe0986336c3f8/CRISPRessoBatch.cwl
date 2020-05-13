class: CommandLineTool
id: CRISPRessoBatch.cwl
inputs:
- id: fast_q_r1
  doc: 'First fastq file (default: Fastq filename)'
  type: string
  inputBinding:
    prefix: --fastq_r1
- id: fast_q_r2
  doc: 'Second fastq file for paired end reads (default: )'
  type: string
  inputBinding:
    prefix: --fastq_r2
- id: amplicon_seq
  doc: 'Amplicon Sequence (can be comma-separated list of multiple sequences) (default:
    None)'
  type: string
  inputBinding:
    prefix: --amplicon_seq
- id: amplicon_name
  doc: 'Amplicon Name (can be comma-separated list of multiple names, corresponding
    to amplicon sequences given in --amplicon_seq (default: Reference)'
  type: string
  inputBinding:
    prefix: --amplicon_name
- id: amplicon_min_alignment_score
  doc: 'Amplicon Minimum Alignment Score; score between 0 and 100; sequences must
    have at least this homology score with the amplicon to be aligned (can be comma-
    separated list of multiple scores, corresponding to amplicon sequences given in
    --amplicon_seq) (default: )'
  type: string
  inputBinding:
    prefix: --amplicon_min_alignment_score
- id: default_min_aln_score
  doc: 'Default minimum homology score for a read to align to a reference amplicon
    (default: 60)'
  type: string
  inputBinding:
    prefix: --default_min_aln_score
- id: expand_ambiguous_alignments
  doc: 'If more than one reference amplicon is given, reads that align to multiple
    reference amplicons will count equally toward each amplicon. Default behavior
    is to exclude ambiguous alignments. (default: False)'
  type: boolean
  inputBinding:
    prefix: --expand_ambiguous_alignments
- id: guide_seq
  doc: "sgRNA sequence, if more than one, please separate by commas. Note that the\
    \ sgRNA needs to be input as the guide RNA sequence (usually 20 nt) immediately\
    \ adjacent to but not including the PAM sequence (5' of NGG for SpCas9). If the\
    \ PAM is found on the opposite strand with respect to the Amplicon Sequence, ensure\
    \ the sgRNA sequence is also found on the opposite strand. The CRISPResso convention\
    \ is to depict the expected cleavage position using the value of the parameter\
    \ '--quantification_window_center' nucleotides from the 3' end of the guide. In\
    \ addition, the use of alternate nucleases besides SpCas9 is supported. For example,\
    \ if using the Cpf1 system, enter the sequence (usually 20 nt) immediately 3'\
    \ of the PAM sequence and explicitly set the '--cleavage_offset' parameter to\
    \ 1, since the default setting of -3 is suitable only for SpCas9. (default: )"
  type: string
  inputBinding:
    prefix: --guide_seq
- id: guide_name
  doc: 'sgRNA names, if more than one, please separate by commas. (default: )'
  type: string
  inputBinding:
    prefix: --guide_name
- id: flexi_guide
  doc: 'sgRNA sequence (flexible) (can be comma-separated list of multiple flexiguides).
    The flexiguide sequence will be aligned to the amplicon sequence(s), as long as
    the guide sequence has homology as set by --flexiguide_homology. (default: None)'
  type: string
  inputBinding:
    prefix: --flexiguide
- id: flexi_guide_homology
  doc: 'flexiguides will yield guides in amplicons with at least this homology to
    the flexiguide sequence. (default: 80)'
  type: string
  inputBinding:
    prefix: --flexiguide_homology
- id: flexi_guide_name
  doc: 'flexiguide name (default: )'
  type: string
  inputBinding:
    prefix: --flexiguide_name
- id: expected_hdr_amplicon_seq
  doc: 'Amplicon sequence expected after HDR (default: )'
  type: string
  inputBinding:
    prefix: --expected_hdr_amplicon_seq
- id: coding_seq
  doc: 'Subsequence/s of the amplicon sequence covering one or more coding sequences
    for frameshift analysis. If more than one (for example, split by intron/s), please
    separate by commas. (default: )'
  type: string
  inputBinding:
    prefix: --coding_seq
- id: min_average_read_quality
  doc: 'Minimum average quality score (phred33) to keep a read (default: 0)'
  type: long
  inputBinding:
    prefix: --min_average_read_quality
- id: min_single_bp_quality
  doc: 'Minimum single bp score (phred33) to keep a read (default: 0)'
  type: long
  inputBinding:
    prefix: --min_single_bp_quality
- id: min_bp_quality_or_n
  doc: 'Bases with a quality score (phred33) less than this value will be set to "N"
    (default: 0)'
  type: long
  inputBinding:
    prefix: --min_bp_quality_or_N
- id: file_prefix
  doc: 'File prefix for output plots and tables (default: )'
  type: File
  inputBinding:
    prefix: --file_prefix
- id: name
  doc: 'Output name of the report (default: the names is obtained from the filename
    of the fastq file/s used in input) (default: )'
  type: string
  inputBinding:
    prefix: --name
- id: output_folder
  doc: 'Output folder to use for the analysis (default: current folder) (default:
    )'
  type: string
  inputBinding:
    prefix: --output_folder
- id: split_paired_end
  doc: 'Splits a single fastq file containing paired end reads in two files before
    running CRISPResso (default: False)'
  type: boolean
  inputBinding:
    prefix: --split_paired_end
- id: trim_sequences
  doc: 'Enable the trimming of Illumina adapters with Trimmomatic (default: False)'
  type: boolean
  inputBinding:
    prefix: --trim_sequences
- id: trim_mo_matic_command
  doc: 'Command to run trimmomatic (default: trimmomatic)'
  type: string
  inputBinding:
    prefix: --trimmomatic_command
- id: trim_mo_matic_options_string
  doc: 'Override options for Trimmomatic, e.g. "ILLUMINACLIP:/data/NexteraPE-PE.fa:0:90:10:0:true"
    (default: )'
  type: string
  inputBinding:
    prefix: --trimmomatic_options_string
- id: flash_command
  doc: 'Command to run flash (default: flash)'
  type: string
  inputBinding:
    prefix: --flash_command
- id: min_paired_end_reads_overlap
  doc: 'Parameter for the FLASH read merging step. Minimum required overlap length
    between two reads to provide a confident overlap. (default: 10)'
  type: long
  inputBinding:
    prefix: --min_paired_end_reads_overlap
- id: max_paired_end_reads_overlap
  doc: 'Parameter for the FLASH merging step. Maximum overlap length expected in approximately
    90% of read pairs. Please see the FLASH manual for more information. (default:
    100)'
  type: long
  inputBinding:
    prefix: --max_paired_end_reads_overlap
- id: stringent_flash_merging
  doc: 'Use stringent parameters for flash merging. In the case where flash could
    merge R1 and R2 reads ambiguously, the expected overlap is calculated as 2*average_read_length
    - amplicon_length. The flash parameters for --min-overlap and --max-overlap will
    be set to prefer merged reads with length within 10bp of the expected overlap.
    These values override the --min_paired_end_reads_overlap or --max_paired_end_reads_overlap
    CRISPResso parameters. (default: False)'
  type: boolean
  inputBinding:
    prefix: --stringent_flash_merging
- id: quantification_window_size
  doc: 'Defines the size (in bp) of the quantification window extending from the position
    specified by the "-- cleavage_offset" or "--quantification_window_center" parameter
    in relation to the provided guide RNA sequence(s) (--sgRNA). Mutations within
    this number of bp from the quantification window center are used in classifying
    reads as modified or unmodified. A value of 0 disables this window and indels
    in the entire amplicon are considered. Default is 1, 1bp on each side of the cleavage
    position for a total length of 2bp. (default: 1)'
  type: string
  inputBinding:
    prefix: --quantification_window_size
- id: quantification_window_center
  doc: "Center of quantification window to use within respect to the 3' end of the\
    \ provided sgRNA sequence. Remember that the sgRNA sequence must be entered without\
    \ the PAM. For cleaving nucleases, this is the predicted cleavage position. The\
    \ default is -3 and is suitable for the Cas9 system. For alternate nucleases,\
    \ other cleavage offsets may be appropriate, for example, if using Cpf1 this parameter\
    \ would be set to 1. For base editors, this could be set to -17 to only include\
    \ mutations near the 5' end of the sgRNA. (default: -3)"
  type: string
  inputBinding:
    prefix: --quantification_window_center
- id: exclude_bp_from_left
  doc: 'Exclude bp from the left side of the amplicon sequence for the quantification
    of the indels (default: 15)'
  type: string
  inputBinding:
    prefix: --exclude_bp_from_left
- id: exclude_bp_from_right
  doc: 'Exclude bp from the right side of the amplicon sequence for the quantification
    of the indels (default: 15)'
  type: string
  inputBinding:
    prefix: --exclude_bp_from_right
- id: ignore_substitutions
  doc: 'Ignore substitutions events for the quantification and visualization (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --ignore_substitutions
- id: ignore_insertions
  doc: 'Ignore insertions events for the quantification and visualization (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --ignore_insertions
- id: ignore_deletions
  doc: 'Ignore deletions events for the quantification and visualization (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --ignore_deletions
- id: discard_in_del_reads
  doc: 'Discard reads with indels in the quantification window from analysis (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --discard_indel_reads
- id: dso_dn
  doc: 'Label reads with the dsODN sequence provided (default: )'
  type: string
  inputBinding:
    prefix: --dsODN
- id: needleman_wunsch_gap_open
  doc: 'Gap open option for Needleman-Wunsch alignment (default: -20)'
  type: string
  inputBinding:
    prefix: --needleman_wunsch_gap_open
- id: needleman_wunsch_gap_extend
  doc: 'Gap extend option for Needleman-Wunsch alignment (default: -2)'
  type: string
  inputBinding:
    prefix: --needleman_wunsch_gap_extend
- id: needleman_wunsch_gap_incentive
  doc: 'Gap incentive value for inserting indels at cut sites (default: 1)'
  type: string
  inputBinding:
    prefix: --needleman_wunsch_gap_incentive
- id: needleman_wunsch_aln_matrix_loc
  doc: 'Location of the matrix specifying substitution scores in the NCBI format (see
    ftp://ftp.ncbi.nih.gov/blast/matrices/) (default: EDNAFULL)'
  type: string
  inputBinding:
    prefix: --needleman_wunsch_aln_matrix_loc
- id: offset_around_cut_to_plot
  doc: 'Defines the size of the window extending from the quantification window center
    to plot. Nucleotides within plot_window_size of the quantification_window_center
    for each guide are plotted. (default: 20)'
  type: string
  inputBinding:
    prefix: --offset_around_cut_to_plot
- id: min_frequency_alleles_around_cut_to_plot
  doc: 'Minimum % reads required to report an allele in the alleles table plot. (default:
    0.2)'
  type: long
  inputBinding:
    prefix: --min_frequency_alleles_around_cut_to_plot
- id: expand_allele_plots_by_quantification
  doc: 'If set, alleles with different modifications in the quantification window
    (but not necessarily in the plotting window (e.g. for another sgRNA)) are plotted
    on separate lines, even though they may have the same apparent sequence. To force
    the allele plot and the allele table to be the same, set this parameter. If unset,
    all alleles with the same sequence will be collapsed into one row. (default: False)'
  type: boolean
  inputBinding:
    prefix: --expand_allele_plots_by_quantification
- id: quantification_window_coordinates
  doc: 'Bp positions in the amplicon sequence specifying the quantification window.
    This parameter overrides values of the "--quantification_window_center", "-- cleavage_offset",
    "--window_around_sgrna" or "-- window_around_sgrna" values. Any indels/substitutions
    outside this window are excluded. Indexes are 0-based, meaning that the first
    nucleotide is position 0. Ranges are separted by the dash sign (e.g. "start- stop"),
    and multiple ranges can be separated by the underscore (_). A value of 0 disables
    this filter. (can be comma-separated list of values, corresponding to amplicon
    sequences given in --amplicon_seq e.g. 5-10,5-10_20-30 would specify the 5th-10th
    bp in the first reference and the 5th-10th and 20th-30th bp in the second reference)
    (default: None)'
  type: string
  inputBinding:
    prefix: --quantification_window_coordinates
- id: keep_intermediate
  doc: 'Keep all the intermediate files (default: False)'
  type: boolean
  inputBinding:
    prefix: --keep_intermediate
- id: dump
  doc: 'Dump numpy arrays and pandas dataframes to file for debugging purposes (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --dump
- id: max_rows_alleles_around_cut_to_plot
  doc: 'Maximum number of rows to report in the alleles table plot. (default: 50)'
  type: long
  inputBinding:
    prefix: --max_rows_alleles_around_cut_to_plot
- id: suppress_report
  doc: 'Suppress output report (default: False)'
  type: boolean
  inputBinding:
    prefix: --suppress_report
- id: place_report_in_output_folder
  doc: 'If true, report will be written inside the CRISPResso output folder. By default,
    the report will be written one directory up from the report output. (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --place_report_in_output_folder
- id: suppress_plots
  doc: 'Suppress output plots (default: False)'
  type: boolean
  inputBinding:
    prefix: --suppress_plots
- id: base_editor_output
  doc: 'Outputs plots and tables to aid in analysis of base editor studies. (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --base_editor_output
- id: conversion_nuc_from
  doc: 'For base editor plots, this is the nucleotide targeted by the base editor
    (default: C)'
  type: string
  inputBinding:
    prefix: --conversion_nuc_from
- id: conversion_nuc_to
  doc: 'For base editor plots, this is the nucleotide produced by the base editor
    (default: T)'
  type: string
  inputBinding:
    prefix: --conversion_nuc_to
- id: crispresso1_mode
  doc: 'Parameter usage as in CRISPResso 1 (default: False)'
  type: boolean
  inputBinding:
    prefix: --crispresso1_mode
- id: auto
  doc: 'Infer amplicon sequence from most common reads (default: False)'
  type: boolean
  inputBinding:
    prefix: --auto
- id: debug
  doc: 'Show debug messages (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: no_rerun
  doc: "Don't rerun CRISPResso2 if a run using the same parameters has already been\
    \ finished. (default: False)"
  type: boolean
  inputBinding:
    prefix: --no_rerun
- id: batch_settings
  doc: 'Settings file for batch. Must be tab-separated text file. The header row contains
    CRISPResso parameters (e.g., fastq_r1, fastq_r2, amplicon_seq, and other optional
    parameters). Each following row sets parameters for an additional batch. (default:
    None)'
  type: string
  inputBinding:
    prefix: --batch_settings
- id: skip_failed
  doc: 'Continue with batch analysis even if one sample fails (default: False)'
  type: boolean
  inputBinding:
    prefix: --skip_failed
- id: min_reads_for_inclusion
  doc: 'Minimum number of reads for a batch to be included in the batch summary (default:
    None)'
  type: long
  inputBinding:
    prefix: --min_reads_for_inclusion
- id: n_processes
  doc: 'Specify the number of processes to use for quantification. Please use with
    caution since increasing this parameter will increase the memory required to run
    CRISPResso. (default: 1)'
  type: string
  inputBinding:
    prefix: --n_processes
- id: batch_output_folder
  doc: 'Directory where batch analysis output will be stored (default: None)'
  type: string
  inputBinding:
    prefix: --batch_output_folder
- id: cris_presso_command
  doc: 'CRISPResso command to call (default: CRISPResso)'
  type: string
  inputBinding:
    prefix: --crispresso_command
outputs: []
cwlVersion: v1.1
baseCommand:
- CRISPRessoBatch

#!/usr/bin/env cwl-runner

baseCommand:
- CRISPResso
class: CommandLineTool
cwlVersion: v1.0
id: crispresso
inputs:
- doc: 'First fastq file (default: Fastq filename)'
  id: fast_q_r1
  inputBinding:
    prefix: --fastq_r1
  type: string
- doc: 'Second fastq file for paired end reads (default: )'
  id: fast_q_r2
  inputBinding:
    prefix: --fastq_r2
  type: string
- doc: 'Amplicon Sequence (can be comma-separated list of multiple sequences) (default:
    None)'
  id: amplicon_seq
  inputBinding:
    prefix: --amplicon_seq
  type: string
- doc: 'Amplicon Name (can be comma-separated list of multiple names, corresponding
    to amplicon sequences given in --amplicon_seq (default: Reference)'
  id: amplicon_name
  inputBinding:
    prefix: --amplicon_name
  type: string
- doc: 'Amplicon Minimum Alignment Score; score between 0 and 100; sequences must
    have at least this homology score with the amplicon to be aligned (can be comma-
    separated list of multiple scores, corresponding to amplicon sequences given in
    --amplicon_seq) (default: )'
  id: amplicon_min_alignment_score
  inputBinding:
    prefix: --amplicon_min_alignment_score
  type: string
- doc: 'Default minimum homology score for a read to align to a reference amplicon
    (default: 60)'
  id: default_min_aln_score
  inputBinding:
    prefix: --default_min_aln_score
  type: string
- doc: 'If more than one reference amplicon is given, reads that align to multiple
    reference amplicons will count equally toward each amplicon. Default behavior
    is to exclude ambiguous alignments. (default: False)'
  id: expand_ambiguous_alignments
  inputBinding:
    prefix: --expand_ambiguous_alignments
  type: boolean
- doc: "sgRNA sequence, if more than one, please separate by commas. Note that the\
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
  id: guide_seq
  inputBinding:
    prefix: --guide_seq
  type: string
- doc: 'sgRNA names, if more than one, please separate by commas. (default: )'
  id: guide_name
  inputBinding:
    prefix: --guide_name
  type: string
- doc: 'sgRNA sequence (flexible) (can be comma-separated list of multiple flexiguides).
    The flexiguide sequence will be aligned to the amplicon sequence(s), as long as
    the guide sequence has homology as set by --flexiguide_homology. (default: None)'
  id: flexi_guide
  inputBinding:
    prefix: --flexiguide
  type: string
- doc: 'flexiguides will yield guides in amplicons with at least this homology to
    the flexiguide sequence. (default: 80)'
  id: flexi_guide_homology
  inputBinding:
    prefix: --flexiguide_homology
  type: string
- doc: 'flexiguide name (default: )'
  id: flexi_guide_name
  inputBinding:
    prefix: --flexiguide_name
  type: string
- doc: 'Amplicon sequence expected after HDR (default: )'
  id: expected_hdr_amplicon_seq
  inputBinding:
    prefix: --expected_hdr_amplicon_seq
  type: string
- doc: 'Subsequence/s of the amplicon sequence covering one or more coding sequences
    for frameshift analysis. If more than one (for example, split by intron/s), please
    separate by commas. (default: )'
  id: coding_seq
  inputBinding:
    prefix: --coding_seq
  type: string
- doc: 'Minimum average quality score (phred33) to keep a read (default: 0)'
  id: min_average_read_quality
  inputBinding:
    prefix: --min_average_read_quality
  type: long
- doc: 'Minimum single bp score (phred33) to keep a read (default: 0)'
  id: min_single_bp_quality
  inputBinding:
    prefix: --min_single_bp_quality
  type: long
- doc: 'Bases with a quality score (phred33) less than this value will be set to "N"
    (default: 0)'
  id: min_bp_quality_or_n
  inputBinding:
    prefix: --min_bp_quality_or_N
  type: long
- doc: 'File prefix for output plots and tables (default: )'
  id: file_prefix
  inputBinding:
    prefix: --file_prefix
  type: File
- doc: 'Output name of the report (default: the names is obtained from the filename
    of the fastq file/s used in input) (default: )'
  id: name
  inputBinding:
    prefix: --name
  type: string
- doc: 'Output folder to use for the analysis (default: current folder) (default:
    )'
  id: output_folder
  inputBinding:
    prefix: --output_folder
  type: string
- doc: 'Splits a single fastq file containing paired end reads in two files before
    running CRISPResso (default: False)'
  id: split_paired_end
  inputBinding:
    prefix: --split_paired_end
  type: boolean
- doc: 'Enable the trimming of Illumina adapters with Trimmomatic (default: False)'
  id: trim_sequences
  inputBinding:
    prefix: --trim_sequences
  type: boolean
- doc: 'Command to run trimmomatic (default: trimmomatic)'
  id: trim_mo_matic_command
  inputBinding:
    prefix: --trimmomatic_command
  type: string
- doc: 'Override options for Trimmomatic, e.g. "ILLUMINACLIP:/data/NexteraPE-PE.fa:0:90:10:0:true"
    (default: )'
  id: trim_mo_matic_options_string
  inputBinding:
    prefix: --trimmomatic_options_string
  type: string
- doc: 'Command to run flash (default: flash)'
  id: flash_command
  inputBinding:
    prefix: --flash_command
  type: string
- doc: 'Parameter for the FLASH read merging step. Minimum required overlap length
    between two reads to provide a confident overlap. (default: 10)'
  id: min_paired_end_reads_overlap
  inputBinding:
    prefix: --min_paired_end_reads_overlap
  type: long
- doc: 'Parameter for the FLASH merging step. Maximum overlap length expected in approximately
    90% of read pairs. Please see the FLASH manual for more information. (default:
    100)'
  id: max_paired_end_reads_overlap
  inputBinding:
    prefix: --max_paired_end_reads_overlap
  type: long
- doc: 'Use stringent parameters for flash merging. In the case where flash could
    merge R1 and R2 reads ambiguously, the expected overlap is calculated as 2*average_read_length
    - amplicon_length. The flash parameters for --min-overlap and --max-overlap will
    be set to prefer merged reads with length within 10bp of the expected overlap.
    These values override the --min_paired_end_reads_overlap or --max_paired_end_reads_overlap
    CRISPResso parameters. (default: False)'
  id: stringent_flash_merging
  inputBinding:
    prefix: --stringent_flash_merging
  type: boolean
- doc: 'Defines the size (in bp) of the quantification window extending from the position
    specified by the "-- cleavage_offset" or "--quantification_window_center" parameter
    in relation to the provided guide RNA sequence(s) (--sgRNA). Mutations within
    this number of bp from the quantification window center are used in classifying
    reads as modified or unmodified. A value of 0 disables this window and indels
    in the entire amplicon are considered. Default is 1, 1bp on each side of the cleavage
    position for a total length of 2bp. (default: 1)'
  id: quantification_window_size
  inputBinding:
    prefix: --quantification_window_size
  type: string
- doc: "Center of quantification window to use within respect to the 3' end of the\
    \ provided sgRNA sequence. Remember that the sgRNA sequence must be entered without\
    \ the PAM. For cleaving nucleases, this is the predicted cleavage position. The\
    \ default is -3 and is suitable for the Cas9 system. For alternate nucleases,\
    \ other cleavage offsets may be appropriate, for example, if using Cpf1 this parameter\
    \ would be set to 1. For base editors, this could be set to -17 to only include\
    \ mutations near the 5' end of the sgRNA. (default: -3)"
  id: quantification_window_center
  inputBinding:
    prefix: --quantification_window_center
  type: string
- doc: 'Exclude bp from the left side of the amplicon sequence for the quantification
    of the indels (default: 15)'
  id: exclude_bp_from_left
  inputBinding:
    prefix: --exclude_bp_from_left
  type: string
- doc: 'Exclude bp from the right side of the amplicon sequence for the quantification
    of the indels (default: 15)'
  id: exclude_bp_from_right
  inputBinding:
    prefix: --exclude_bp_from_right
  type: string
- doc: 'Ignore substitutions events for the quantification and visualization (default:
    False)'
  id: ignore_substitutions
  inputBinding:
    prefix: --ignore_substitutions
  type: boolean
- doc: 'Ignore insertions events for the quantification and visualization (default:
    False)'
  id: ignore_insertions
  inputBinding:
    prefix: --ignore_insertions
  type: boolean
- doc: 'Ignore deletions events for the quantification and visualization (default:
    False)'
  id: ignore_deletions
  inputBinding:
    prefix: --ignore_deletions
  type: boolean
- doc: 'Discard reads with indels in the quantification window from analysis (default:
    False)'
  id: discard_in_del_reads
  inputBinding:
    prefix: --discard_indel_reads
  type: boolean
- doc: 'Label reads with the dsODN sequence provided (default: )'
  id: dso_dn
  inputBinding:
    prefix: --dsODN
  type: string
- doc: 'Gap open option for Needleman-Wunsch alignment (default: -20)'
  id: needleman_wunsch_gap_open
  inputBinding:
    prefix: --needleman_wunsch_gap_open
  type: string
- doc: 'Gap extend option for Needleman-Wunsch alignment (default: -2)'
  id: needleman_wunsch_gap_extend
  inputBinding:
    prefix: --needleman_wunsch_gap_extend
  type: string
- doc: 'Gap incentive value for inserting indels at cut sites (default: 1)'
  id: needleman_wunsch_gap_incentive
  inputBinding:
    prefix: --needleman_wunsch_gap_incentive
  type: string
- doc: 'Location of the matrix specifying substitution scores in the NCBI format (see
    ftp://ftp.ncbi.nih.gov/blast/matrices/) (default: EDNAFULL)'
  id: needleman_wunsch_aln_matrix_loc
  inputBinding:
    prefix: --needleman_wunsch_aln_matrix_loc
  type: string
- doc: 'Defines the size of the window extending from the quantification window center
    to plot. Nucleotides within plot_window_size of the quantification_window_center
    for each guide are plotted. (default: 20)'
  id: offset_around_cut_to_plot
  inputBinding:
    prefix: --offset_around_cut_to_plot
  type: string
- doc: 'Minimum % reads required to report an allele in the alleles table plot. (default:
    0.2)'
  id: min_frequency_alleles_around_cut_to_plot
  inputBinding:
    prefix: --min_frequency_alleles_around_cut_to_plot
  type: long
- doc: 'If set, alleles with different modifications in the quantification window
    (but not necessarily in the plotting window (e.g. for another sgRNA)) are plotted
    on separate lines, even though they may have the same apparent sequence. To force
    the allele plot and the allele table to be the same, set this parameter. If unset,
    all alleles with the same sequence will be collapsed into one row. (default: False)'
  id: expand_allele_plots_by_quantification
  inputBinding:
    prefix: --expand_allele_plots_by_quantification
  type: boolean
- doc: 'Bp positions in the amplicon sequence specifying the quantification window.
    This parameter overrides values of the "--quantification_window_center", "-- cleavage_offset",
    "--window_around_sgrna" or "-- window_around_sgrna" values. Any indels/substitutions
    outside this window are excluded. Indexes are 0-based, meaning that the first
    nucleotide is position 0. Ranges are separted by the dash sign (e.g. "start- stop"),
    and multiple ranges can be separated by the underscore (_). A value of 0 disables
    this filter. (can be comma-separated list of values, corresponding to amplicon
    sequences given in --amplicon_seq e.g. 5-10,5-10_20-30 would specify the 5th-10th
    bp in the first reference and the 5th-10th and 20th-30th bp in the second reference)
    (default: None)'
  id: quantification_window_coordinates
  inputBinding:
    prefix: --quantification_window_coordinates
  type: string
- doc: 'Keep all the intermediate files (default: False)'
  id: keep_intermediate
  inputBinding:
    prefix: --keep_intermediate
  type: boolean
- doc: 'Dump numpy arrays and pandas dataframes to file for debugging purposes (default:
    False)'
  id: dump
  inputBinding:
    prefix: --dump
  type: boolean
- doc: 'Maximum number of rows to report in the alleles table plot. (default: 50)'
  id: max_rows_alleles_around_cut_to_plot
  inputBinding:
    prefix: --max_rows_alleles_around_cut_to_plot
  type: long
- doc: 'Suppress output report (default: False)'
  id: suppress_report
  inputBinding:
    prefix: --suppress_report
  type: boolean
- doc: 'If true, report will be written inside the CRISPResso output folder. By default,
    the report will be written one directory up from the report output. (default:
    False)'
  id: place_report_in_output_folder
  inputBinding:
    prefix: --place_report_in_output_folder
  type: boolean
- doc: 'Suppress output plots (default: False)'
  id: suppress_plots
  inputBinding:
    prefix: --suppress_plots
  type: boolean
- doc: 'Outputs plots and tables to aid in analysis of base editor studies. (default:
    False)'
  id: base_editor_output
  inputBinding:
    prefix: --base_editor_output
  type: boolean
- doc: 'For base editor plots, this is the nucleotide targeted by the base editor
    (default: C)'
  id: conversion_nuc_from
  inputBinding:
    prefix: --conversion_nuc_from
  type: string
- doc: 'For base editor plots, this is the nucleotide produced by the base editor
    (default: T)'
  id: conversion_nuc_to
  inputBinding:
    prefix: --conversion_nuc_to
  type: string
- doc: 'Parameter usage as in CRISPResso 1 (default: False)'
  id: crispresso1_mode
  inputBinding:
    prefix: --crispresso1_mode
  type: boolean
- doc: 'Infer amplicon sequence from most common reads (default: False)'
  id: auto
  inputBinding:
    prefix: --auto
  type: boolean
- doc: 'Show debug messages (default: False)'
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
- doc: "Don't rerun CRISPResso2 if a run using the same parameters has already been\
    \ finished. (default: False)"
  id: no_rerun
  inputBinding:
    prefix: --no_rerun
  type: boolean

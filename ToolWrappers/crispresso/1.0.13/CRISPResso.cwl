class: CommandLineTool
id: CRISPResso.cwl
inputs:
- id: in_analysis
  doc: "CRISPR/Cas9 outcomes from deep sequencing data-\n)"
  type: long?
  inputBinding:
    prefix: -Analysis
- id: in_fast_q_r_one
  doc: 'First fastq file (default: Fastq filename)'
  type: long?
  inputBinding:
    prefix: --fastq_r1
- id: in_fast_q_r_two
  doc: 'Second fastq file for paired end reads (default: )'
  type: long?
  inputBinding:
    prefix: --fastq_r2
- id: in_amplicon_seq
  doc: 'Amplicon Sequence (default: None)'
  type: string?
  inputBinding:
    prefix: --amplicon_seq
- id: in_guide_seq
  doc: "sgRNA sequence, if more than one, please separate by\ncomma/s. Note that the\
    \ sgRNA needs to be input as the\nguide RNA sequence (usually 20 nt) immediately\n\
    adjacent to but not including the PAM sequence (5' of\nNGG for SpCas9). If the\
    \ PAM is found on the opposite\nstrand with respect to the Amplicon Sequence,\
    \ ensure\nthe sgRNA sequence is also found on the opposite\nstrand. The CRISPResso\
    \ convention is to depict the\nexpected cleavage position using the value of the\n\
    parameter cleavage_offset nt 3' from the end of the\nguide. In addition, the use\
    \ of alternate nucleases to\nSpCas9 is supported. For example, if using the Cpf1\n\
    system, enter the sequence (usually 20 nt) immediately\n3' of the PAM sequence\
    \ and explicitly set the\ncleavage_offset parameter to 1, since the default\n\
    setting of -3 is suitable only for SpCas9. (default: )"
  type: long?
  inputBinding:
    prefix: --guide_seq
- id: in_expected_hdr_amplicon_seq
  doc: 'Amplicon sequence expected after HDR (default: )'
  type: string?
  inputBinding:
    prefix: --expected_hdr_amplicon_seq
- id: in_donor_seq
  doc: "Donor Sequence. This optional input comprises a\nsubsequence of the expected\
    \ HDR amplicon to be\nhighlighted in plots. (default: )"
  type: string?
  inputBinding:
    prefix: --donor_seq
- id: in_coding_seq
  doc: "Subsequence/s of the amplicon sequence covering one or\nmore coding sequences\
    \ for the frameshift analysis.If\nmore than one (for example, split by intron/s),\
    \ please\nseparate by comma. (default: )"
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
- id: in_min_identity_score
  doc: "Minimum identity score for the alignment (default:\n60.0)"
  type: long?
  inputBinding:
    prefix: --min_identity_score
- id: in_name
  doc: 'Output name (default: )'
  type: string?
  inputBinding:
    prefix: --name
- id: in_split_paired_end
  doc: "Splits a single fastq file contating paired end reads\nin two files before\
    \ running CRISPResso (default:\nFalse)"
  type: Directory?
  inputBinding:
    prefix: --split_paired_end
- id: in_trim_sequences
  doc: "Enable the trimming of Illumina adapters with\nTrimmomatic (default: False)"
  type: boolean?
  inputBinding:
    prefix: --trim_sequences
- id: in_trim_mo_matic_options_string
  doc: "Override options for Trimmomatic (default:\nILLUMINACLIP:/usr/local/lib/python2.7/site-\n\
    packages/CRISPResso/data/NexteraPE-\nPE.fa:0:90:10:0:true MINLEN:40)"
  type: double?
  inputBinding:
    prefix: --trimmomatic_options_string
- id: in_min_paired_end_reads_overlap
  doc: "Parameter for the FLASH read merging step. Minimum\nrequired overlap length\
    \ between two reads to provide a\nconfident overlap. (default: 4)"
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
- id: in_hide_mutations_outside_window_nhej
  doc: "This parameter allows to visualize only the mutations\noverlapping the cleavage\
    \ site and used to classify a\nread as NHEJ. This parameter has no effect on the\n\
    quanitification of the NHEJ. It may be helpful to mask\na pre-existing and known\
    \ mutations or sequencing\nerrors outside the window used for quantification of\n\
    NHEJ events. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --hide_mutations_outside_window_NHEJ
- id: in_window_around_sg_rna
  doc: "Window(s) in bp around the cleavage position (half on\non each side) as determined\
    \ by the provide guide RNA\nsequence to quantify the indels. Any indels outside\n\
    this window are excluded. A value of 0 disables this\nfilter. (default: 1)"
  type: long?
  inputBinding:
    prefix: --window_around_sgrna
- id: in_cleavage_offset
  doc: "Cleavage offset to use within respect to the 3' end of\nthe provided sgRNA\
    \ sequence. Remember that the sgRNA\nsequence must be entered without the PAM.\
    \ The default\nis -3 and is suitable for the SpCas9 system. For\nalternate nucleases,\
    \ other cleavage offsets may be\nappropriate, for example, if using Cpf1 this\
    \ parameter\nwould be set to 1. (default: -3)"
  type: long?
  inputBinding:
    prefix: --cleavage_offset
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
- id: in_hdr_perfect_alignment_threshold
  doc: "Sequence homology % for an HDR occurrence (default:\n98.0)"
  type: double?
  inputBinding:
    prefix: --hdr_perfect_alignment_threshold
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
- id: in_needle_options_string
  doc: "Override options for the Needle aligner (default:\n-gapopen=10 -gapextend=0.5\
    \ -awidth3=5000)"
  type: double?
  inputBinding:
    prefix: --needle_options_string
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
- id: in_save_also_png
  doc: "Save also .png images additionally to .pdf files\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --save_also_png
- id: in_n_processes
  doc: "Specify the number of processes to use for the\nquantification. Please use\
    \ with caution since\nincreasing this parameter will increase significantly\n\
    the memory required to run CRISPResso. (default: 1)"
  type: long?
  inputBinding:
    prefix: --n_processes
- id: in_offset_around_cut_to_plot
  doc: "Offset to use to summarize alleles around the cut site\nin the alleles table\
    \ plot. (default: 20)"
  type: long?
  inputBinding:
    prefix: --offset_around_cut_to_plot
- id: in_min_frequency_alleles_around_cut_to_plot
  doc: "Minimum % reads required to report an allele in the\nalleles table plot. (default:\
    \ 0.2)"
  type: long?
  inputBinding:
    prefix: --min_frequency_alleles_around_cut_to_plot
- id: in_max_rows_alleles_around_cut_to_plot
  doc: "Maximum number of rows to report in the alleles table\nplot. (default: 50)"
  type: long?
  inputBinding:
    prefix: --max_rows_alleles_around_cut_to_plot
- id: in_debug
  doc: 'Print stack trace on error. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_split_paired_end
  doc: "Splits a single fastq file contating paired end reads\nin two files before\
    \ running CRISPResso (default:\nFalse)"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_split_paired_end)
hints: []
cwlVersion: v1.1
baseCommand:
- CRISPResso

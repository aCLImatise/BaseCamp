class: CommandLineTool
id: rsem_eval_calculate_score.cwl
inputs:
- id: in_overlap_size
  doc: "The minimum overlap size required to join two reads together.\n(Default: 0)"
  type: long
  inputBinding:
    prefix: --overlap-size
- id: in_transcript_length_parameters
  doc: "Read the true transcript length distribution's mean and standard\ndeviation\
    \ from <file>. This option is mutually exclusive with\n'--transcript-length-mean'\
    \ and '--transcript-length-sd'. (Default:\noff)"
  type: File
  inputBinding:
    prefix: --transcript-length-parameters
- id: in_transcript_length_mean
  doc: "The mean of true transcript length distribution. This option is used\ntogether\
    \ with '--transcript-length-sd' and mutually exclusive with\n'--estimate-transcript-length-distribution'.\
    \ (Default: learned from\nhuman Ensembl annotation and hg20 genome)"
  type: long
  inputBinding:
    prefix: --transcript-length-mean
- id: in_transcript_length_sd
  doc: "The standard deviation of true transcript length distribution. This\noption\
    \ is used together with '--transcript-length-mean' and mutually\nexclusive with\
    \ '--estimate-transcript-length-distribution'.\n(Default: learned from human Ensembl\
    \ annotation and hg20 genome)"
  type: long
  inputBinding:
    prefix: --transcript-length-sd
- id: in_paired_end
  doc: 'Input reads are paired-end reads. (Default: off)'
  type: boolean
  inputBinding:
    prefix: --paired-end
- id: in_no_qualities
  doc: 'Input reads do not contain quality scores. (Default: off)'
  type: boolean
  inputBinding:
    prefix: --no-qualities
- id: in_strand_specific
  doc: "The RNA-Seq protocol used to generate the reads is strand specific,\ni.e.,\
    \ all (upstream) reads are derived from the forward strand. This\noption is equivalent\
    \ to --forward-prob=1.0. With this option set, if\nRSEM-EVAL runs the Bowtie/Bowtie\
    \ 2 aligner, the '--norc'\nBowtie/Bowtie 2 option will be used, which disables\
    \ alignment to the\nreverse strand of transcripts. (Default: off)"
  type: boolean
  inputBinding:
    prefix: --strand-specific
- id: in_bowtie_two
  doc: "Use Bowtie 2 instead of Bowtie to align reads. Since currently\nRSEM-EVAL\
    \ does not handle indel, local and discordant alignments,\nthe Bowtie2 parameters\
    \ are set in a way to avoid those alignments.\nIn particular, we use options '--sensitive\
    \ --dpad 0 --gbar 99999999\n--mp 1,1 --np 1 --score-min L,0,-0.1' by default.\
    \ \"-0.1\", the last\nparameter of '--score-min' is the negative value of the\
    \ maximum\nmismatch rate allowed. This rate can be set by option\n'--bowtie2-mismatch-rate'.\
    \ If reads are paired-end, we additionally\nuse options '--no-mixed' and '--no-discordant'.\
    \ (Default: off)"
  type: boolean
  inputBinding:
    prefix: --bowtie2
- id: in_sam
  doc: 'Input file is in SAM format. (Default: off)'
  type: boolean
  inputBinding:
    prefix: --sam
- id: in_bam
  doc: 'Input file is in BAM format. (Default: off)'
  type: boolean
  inputBinding:
    prefix: --bam
- id: in_p_slash_num_threads
  doc: "Number of threads to use. Both Bowtie/Bowtie2, expression estimation\nand\
    \ 'samtools sort' will use this many threads. (Default: 1)"
  type: long
  inputBinding:
    prefix: -p/--num-threads
- id: in_output_bam
  doc: 'Generate BAM outputs. (Default: off)'
  type: boolean
  inputBinding:
    prefix: --output-bam
- id: in_sampling_for_bam
  doc: "When RSEM-EVAL generates a BAM file, instead of outputing all\nalignments\
    \ a read has with their posterior probabilities, one\nalignment is sampled according\
    \ to the posterior probabilities. The\nsampling procedure includes the alignment\
    \ to the \"noise\" transcript,\nwhich does not appear in the BAM file. Only the\
    \ sampled alignment\nhas a weight of 1. All other alignments have weight 0. If\
    \ the\n\"noise\" transcript is sampled, all alignments appeared in the BAM\nfile\
    \ should have weight 0. (Default: off)"
  type: boolean
  inputBinding:
    prefix: --sampling-for-bam
- id: in_seed
  doc: "Set the seed for the random number generators used in calculating\nposterior\
    \ mean estimates and credibility intervals. The seed must be\na non-negative 32\
    \ bit interger. (Default: off)"
  type: long
  inputBinding:
    prefix: --seed
- id: in_q_slash_quiet
  doc: 'Suppress the output of logging information. (Default: off)'
  type: boolean
  inputBinding:
    prefix: -q/--quiet
- id: in_h_slash_help
  doc: Show help information.
  type: boolean
  inputBinding:
    prefix: -h/--help
- id: in_sam_header_info
  doc: "RSEM-EVAL reads header information from input by default. If this\noption\
    \ is on, header information is read from the specified file.\nFor the format of\
    \ the file, please see SAM official website.\n(Default: \"\")"
  type: File
  inputBinding:
    prefix: --sam-header-info
- id: in_seed_length
  doc: "Seed length used by the read aligner. Providing the correct value is\nimportant\
    \ for RSEM-EVAL. If RSEM-EVAL runs Bowtie, it uses this\nvalue for Bowtie's seed\
    \ length parameter. Any read with its or at\nleast one of its mates' (for paired-end\
    \ reads) length less than this\nvalue will be ignored. If the references are not\
    \ added poly(A)\ntails, the minimum allowed value is 5, otherwise, the minimum\n\
    allowed value is 25. Note that this script will only check if the\nvalue >= 5\
    \ and give a warning message if the value < 25 but >= 5.\n(Default: 25)"
  type: long
  inputBinding:
    prefix: --seed-length
- id: in_tag
  doc: "The name of the optional field used in the SAM input for identifying\na read\
    \ with too many valid alignments. The field should have the\nformat <tagName>:i:<value>,\
    \ where a <value> bigger than 0 indicates\na read with too many alignments. (Default:\
    \ \"\")"
  type: long
  inputBinding:
    prefix: --tag
- id: in_bowtie_path
  doc: "The path to the Bowtie executables. (Default: the path to the Bowtie\nexecutables\
    \ is assumed to be in the user's PATH environment\nvariable)"
  type: File
  inputBinding:
    prefix: --bowtie-path
- id: in_bowtie_n
  doc: "(Bowtie parameter) max # of mismatches in the seed. (Range: 0-3,\nDefault:\
    \ 2)"
  type: long
  inputBinding:
    prefix: --bowtie-n
- id: in_bowtie_e
  doc: "(Bowtie parameter) max sum of mismatch quality scores across the\nalignment.\
    \ (Default: 99999999)"
  type: long
  inputBinding:
    prefix: --bowtie-e
- id: in_bowtie_m
  doc: "(Bowtie parameter) suppress all alignments for a read if > <int>\nvalid alignments\
    \ exist. (Default: 200)"
  type: long
  inputBinding:
    prefix: --bowtie-m
- id: in_bowtie_chunk_mbs
  doc: "(Bowtie parameter) memory allocated for best first alignment\ncalculation\
    \ (Default: 0 - use Bowtie's default)"
  type: long
  inputBinding:
    prefix: --bowtie-chunkmbs
- id: in_phred_three_three_quals
  doc: 'Input quality scores are encoded as Phred+33. (Default: on)'
  type: boolean
  inputBinding:
    prefix: --phred33-quals
- id: in_phred_six_four_quals
  doc: "Input quality scores are encoded as Phred+64 (default for GA\nPipeline ver.\
    \ >= 1.3). (Default: off)"
  type: boolean
  inputBinding:
    prefix: --phred64-quals
- id: in_solexa_quals
  doc: "Input quality scores are solexa encoded (from GA Pipeline ver. <\n1.3). (Default:\
    \ off)"
  type: boolean
  inputBinding:
    prefix: --solexa-quals
- id: in_bowtie_two_path
  doc: "(Bowtie 2 parameter) The path to the Bowtie 2 executables. (Default:\nthe\
    \ path to the Bowtie 2 executables is assumed to be in the user's\nPATH environment\
    \ variable)"
  type: File
  inputBinding:
    prefix: --bowtie2-path
- id: in_bowtie_two_mismatch_rate
  doc: "(Bowtie 2 parameter) The maximum mismatch rate allowed. (Default:\n0.1)"
  type: long
  inputBinding:
    prefix: --bowtie2-mismatch-rate
- id: in_bowtie_two_k
  doc: "(Bowtie 2 parameter) Find up to <int> alignments per read. (Default:\n200)"
  type: long
  inputBinding:
    prefix: --bowtie2-k
- id: in_bowtie_two_sensitivity_level
  doc: "(Bowtie 2 parameter) Set Bowtie 2's preset options in --end-to-end\nmode.\
    \ This option controls how hard Bowtie 2 tries to find\nalignments. <string> must\
    \ be one of \"very_fast\", \"fast\", \"sensitive\"\nand \"very_sensitive\". The\
    \ four candidates correspond to Bowtie 2's\n\"--very-fast\", \"--fast\", \"--sensitive\"\
    \ and \"--very-sensitive\"\noptions. (Default: \"sensitive\" - use Bowtie 2's\
    \ default)"
  type: long
  inputBinding:
    prefix: --bowtie2-sensitivity-level
- id: in_forward_prob
  doc: "Probability of generating a read from the forward strand of a\ntranscript.\
    \ Set to 1 for a strand-specific protocol where all\n(upstream) reads are derived\
    \ from the forward strand, 0 for a\nstrand-specific protocol where all (upstream)\
    \ read are derived from\nthe reverse strand, or 0.5 for a non-strand-specific\
    \ protocol.\n(Default: 0.5)"
  type: double
  inputBinding:
    prefix: --forward-prob
- id: in_fragment_length_min
  doc: "Minimum read(SE)/fragment(PE) length allowed. This is also the value\nfor\
    \ the Bowtie/Bowtie2 -I option. (Default: 1)"
  type: long
  inputBinding:
    prefix: --fragment-length-min
- id: in_fragment_length_max
  doc: "Maximum read(SE)/fragment(PE) length allowed. This is also the value\nfor\
    \ the Bowtie/Bowtie 2 -X option. (Default: 1000)"
  type: long
  inputBinding:
    prefix: --fragment-length-max
- id: in_estimate_r_spd
  doc: "Set this option if you want to estimate the read start position\ndistribution\
    \ (RSPD) from data. Otherwise, RSEM-EVAL will use a\nuniform RSPD. (Default: off)"
  type: boolean
  inputBinding:
    prefix: --estimate-rspd
- id: in_num_r_spd_bins
  doc: "Number of bins in the RSPD. Only relevant when '--estimate-rspd' is\nspecified.\
    \ Use of the default setting is recommended. (Default: 20)"
  type: long
  inputBinding:
    prefix: --num-rspd-bins
- id: in_sam_tools_sort_mem
  doc: "Set the maximum memory per thread that can be used by 'samtools\nsort'. <string>\
    \ represents the memory and accepts suffices 'K/M/G'.\nRSEM-EVAL will pass <string>\
    \ to the '-m' option of 'samtools sort'.\nPlease note that the default used here\
    \ is different from the default\nused by samtools. (Default: 1G)"
  type: string
  inputBinding:
    prefix: --samtools-sort-mem
- id: in_keep_intermediate_files
  doc: "Keep temporary files generated by RSEM-EVAL. RSEM-EVAL creates a\ntemporary\
    \ directory, 'sample_name.temp', into which it puts all\nintermediate output files.\
    \ If this directory already exists,\nRSEM-EVAL overwrites all files generated\
    \ by previous RSEM-EVAL runs\ninside of it. By default, after RSEM-EVAL finishes,\
    \ the temporary\ndirectory is deleted. Set this option to prevent the deletion\
    \ of\nthis directory and the intermediate files inside of it. (Default:\noff)"
  type: Directory
  inputBinding:
    prefix: --keep-intermediate-files
- id: in_temporary_folder
  doc: "Set where to put the temporary files generated by RSEM-EVAL. If the\nfolder\
    \ specified does not exist, RSEM-EVAL will try to create it.\n(Default: sample_name.temp)"
  type: Directory
  inputBinding:
    prefix: --temporary-folder
- id: in_time
  doc: "Output time consumed by each step of RSEM-EVAL to\n'sample_name.time'. (Default:\
    \ off)"
  type: boolean
  inputBinding:
    prefix: --time
- id: in_r_sem_eval_calculate_score
  doc: "SYNOPSIS\nrsem-eval-calculate-score [options] upstream_read_file(s) assembly_fasta_file\
    \ sample_name L\nrsem-eval-calculate-score [options] --paired-end upstream_read_file(s)\
    \ downstream_read_file(s) assembly_fasta_file sample_name L\nrsem-eval-calculate-score\
    \ [options] --sam/--bam [--paired-end] input assembly_fasta_file sample_name L"
  type: string
  inputBinding:
    position: 0
- id: in_input
  doc: "SAM/BAM formatted input file. If \"-\" is specified for the filename,\nSAM/BAM\
    \ input is instead assumed to come from standard input.\nRSEM-EVAL requires all\
    \ alignments of the same read group together.\nFor paired-end reads, RSEM-EVAL\
    \ also requires the two mates of any\nalignment be adjacent. See Description section\
    \ for how to make input\nfile obey RSEM-EVAL's requirements."
  type: string
  inputBinding:
    position: 0
- id: in_assembly_fast_a_file
  doc: "A multi-FASTA file contains the assembly used for calculating\nRSEM-EVAL score."
  type: string
  inputBinding:
    position: 1
- id: in_sample_name
  doc: "The name of the sample analyzed. All output files are prefixed by\nthis name\
    \ (e.g., sample_name.isoforms.results)."
  type: string
  inputBinding:
    position: 2
- id: in_sample_name_dot_score_dot_genes_dot_results
  doc: "'sample_name.score' stores the evaluation score for the evaluated\nassembly.\
    \ It contains 13 lines and each line contains a name and a\nvalue separated by\
    \ a tab.\nThe first 6 lines provide: 'Score', the RSEM-EVAL score;\n'BIC_penalty',\
    \ the BIC penalty term;\n'Prior_score_on_contig_lengths_(f_function_canceled)',\
    \ the log score\nof priors of contig lengths, with f function values excluded\
    \ (f\nfunction is defined in equation (4) at page 5 of Additional file 1,\nwhich\
    \ is the supplementary methods, tables and figures of our\nDETONATE paper); 'Prior_score_on_contig_sequences',\
    \ the log score of\npriors of contig sequence bases;\n'Data_likelihood_in_log_space_without_correction',\
    \ the RSEM log data\nlikelihood calculated with contig-level read generating\n\
    probabilities mentioned in section 4 of Additional file 1;\n'Correction_term_(f_function_canceled)',\
    \ the correction term, with f\nfunction values excluded. Score = BIC_penalty +\n\
    Prior_score_on_contig_lengths + Prior_score_on_contig_sequences +\nData_likelihood_in_log_space_without_correction\
    \ - Correction_term.\nBecause both 'Prior_score_on_contig_lengths' and 'Correction_term'\n\
    share the same f function values for each contig, the f function\nvalues can be\
    \ canceled out. Then\n'Prior_score_on_contig_lengths_(f_function_canceled)' is\
    \ the sum of\nlog $c_{\\lambda}(\\ell)$ terms in equation (9) at page 5 of\nAdditional\
    \ file 1. 'Correction_term_(f_function_canceled)' is the\nsum of log $(1 - p_{\\\
    lambda_i})$ terms in equation (23) at page 9 of\nAdditional file 1. For the correction\
    \ term, we use $\\lambda_i$\ninstead of $\\lambda'_i$ to make f function canceled\
    \ out.\nThe next 7 lines provide statistics that may help users to\nunderstand\
    \ the RSEM-EVAL score better. They are:\n'Number_of_contigs', the number of contigs\
    \ contained in the\nassembly; 'Expected_number_of_aligned_reads_given_the_data',\
    \ the\nexpected number of reads assigned to each contig estimated using the\n\
    contig-level read generating probabilities mentioned in section 4 of\nAdditional\
    \ file 1;\n'Number_of_contigs_smaller_than_expected_read/fragment_length', the\n\
    number of contigs whose length is smaller than the expected\nread/fragment length;\
    \ 'Number_of_contigs_with_no_read_aligned_to',\nthe number of contigs whose expected\
    \ number of aligned reads is\nsmaller than 0.005; 'Maximum_data_likelihood_in_log_space',\
    \ the\nmaximum data likelihood in log space calculated from RSEM by\ntreating\
    \ the assembly as \"true\" transcripts;\n'Number_of_alignable_reads', the number\
    \ of reads that have at least\none alignment found by the aligner (Because\n'rsem-calculate-expression'\
    \ tries to use a very loose criteria to\nfind alignments, reads with only low\
    \ quality alignments may also be\ncounted as alignable reads here); 'Number_of_alignments_in_total',\n\
    the number of total alignments found by the aligner.\n'sample_name.score.isoforms.results'\
    \ and\n'sample_name.score.genes.results' output \"corrected\" expression\nlevels\
    \ based on contig-level read generating probabilities mentioned\nin section 4\
    \ of Additional file 1. Unlike\n'sample_name.isoforms.results' and 'sample_name.genes.results',\n\
    which are calculated by treating the contigs as true transcripts,\ncalculating\
    \ 'sample_name.score.isoforms.results' and\n'sample_name.score.genes.results'\
    \ involves first estimating expected\nread coverage for each contig and then convert\
    \ the expected read\ncoverage into contig-level read generating probabilities.\
    \ This\nprocedure is aware of that provided sequences are contigs and gives\n\
    better expression estimates for very short contigs. In addtion, the\n'TPM' field\
    \ is changed to 'CPM' field, which stands for contig per\nmillion.\nFor 'sample_name.score.isoforms.results',\
    \ one additional column is\nadded. The additional column is named as 'contig_impact_score'\
    \ and\ngives the contig impact score for each contig as described in\nsection\
    \ 5 of Additional file 1."
  type: string
  inputBinding:
    position: 0
- id: in_sample_name_dot_isoforms_dot_results
  doc: "File containing isoform level expression estimates. The first line\ncontains\
    \ column names separated by the tab character. The format of\neach line in the\
    \ rest of this file is:\ntranscript_id gene_id length effective_length expected_count\
    \ TPM\nFPKM IsoPct\nFields are separated by the tab character.\n'transcript_id'\
    \ is the transcript name of this transcript. 'gene_id'\nis the gene name of the\
    \ gene which this transcript belongs to\n(denote this gene as its parent gene).\
    \ If no gene information is\nprovided, 'gene_id' and 'transcript_id' are the same.\n\
    'length' is this transcript's sequence length (poly(A) tail is not\ncounted).\
    \ 'effective_length' counts only the positions that can\ngenerate a valid fragment.\
    \ If no poly(A) tail is added,\n'effective_length' is equal to transcript length\
    \ - mean fragment\nlength + 1. If one transcript's effective length is less than\
    \ 1,\nthis transcript's both effective length and abundance estimates are\nset\
    \ to 0.\n'expected_count' is the sum of the posterior probability of each\nread\
    \ comes from this transcript over all reads. Because 1) each read\naligning to\
    \ this transcript has a probability of being generated\nfrom background noise;\
    \ 2) RSEM-EVAL may filter some alignable low\nquality reads, the sum of expected\
    \ counts for all transcript are\ngenerally less than the total number of reads\
    \ aligned.\n'TPM' stands for Transcripts Per Million. It is a relative measure\n\
    of transcript abundance. The sum of all transcripts' TPM is 1\nmillion. 'FPKM'\
    \ stands for Fragments Per Kilobase of transcript per\nMillion mapped reads. It\
    \ is another relative measure of transcript\nabundance. If we define l_bar be\
    \ the mean transcript length in a\nsample, which can be calculated as\nl_bar =\
    \ \\sum_i TPM_i / 10^6 * effective_length_i (i goes through\nevery transcript),\n\
    the following equation is hold:\nFPKM_i = 10^3 / l_bar * TPM_i.\nWe can see that\
    \ the sum of FPKM is not a constant across samples.\n'IsoPct' stands for isoform\
    \ percentage. It is the percentage of this\ntranscript's abandunce over its parent\
    \ gene's abandunce. If its\nparent gene has only one isoform or the gene information\
    \ is not\nprovided, this field will be set to 100."
  type: string
  inputBinding:
    position: 1
- id: in_sample_name_dot_genes_dot_results
  doc: "File containing gene level expression estimates. The first line\ncontains\
    \ column names separated by the tab character. The format of\neach line in the\
    \ rest of this file is:\ngene_id transcript_id(s) length effective_length expected_count\
    \ TPM\nFPKM\nFields are separated by the tab character.\n'transcript_id(s)' is\
    \ a comma-separated list of transcript_ids\nbelonging to this gene. If no gene\
    \ information is provided,\n'gene_id' and 'transcript_id(s)' are identical (the\n\
    'transcript_id').\nA gene's 'length' and 'effective_length' are defined as the\
    \ weighted\naverage of its transcripts' lengths and effective lengths (weighted\n\
    by 'IsoPct'). A gene's abundance estimates are just the sum of its\ntranscripts'\
    \ abundance estimates."
  type: string
  inputBinding:
    position: 2
- id: in_sample_name_dot_transcript_dot_sorted_do_tba_mdot_bai
  doc: "Only generated when --output-bam is specified.\n'sample_name.transcript.bam'\
    \ is a BAM-formatted file of read\nalignments in transcript coordinates. The MAPQ\
    \ field of each\nalignment is set to min(100, floor(-10 * log10(1.0 - w) + 0.5)),\n\
    where w is the posterior probability of that alignment being the\ntrue mapping\
    \ of a read. In addition, RSEM-EVAL pads a new tag\nZW:f:value, where value is\
    \ a single precision floating number\nrepresenting the posterior probability.\
    \ Because this file contains\nall alignment lines produced by bowtie or user-specified\
    \ aligners,\nit can also be used as a replacement of the aligner generated\nBAM/SAM\
    \ file. For paired-end reads, if one mate has alignments but\nthe other does not,\
    \ this file marks the alignable mate as\n\"unmappable\" (flag bit 0x4) and appends\
    \ an optional field \"Z0:A:!\".\n'sample_name.transcript.sorted.bam' and\n'sample_name.transcript.sorted.bam.bai'\
    \ are the sorted BAM file and\nindices generated by samtools (included in RSEM-EVAL\
    \ package)."
  type: string
  inputBinding:
    position: 0
- id: in_sample_name_dot_time
  doc: "Only generated when --time is specified.\nIt contains time (in seconds) consumed\
    \ by building references,\naligning reads, estimating expression levels and calculating\n\
    credibility intervals."
  type: string
  inputBinding:
    position: 1
- id: in_sample_name_dot_stat
  doc: "This is a folder instead of a file. All model related statistics are\nstored\
    \ in this folder. Use 'rsem-plot-model' can generate plots\nusing this folder."
  type: string
  inputBinding:
    position: 2
- id: in_rsemeval_score_can
  doc: The RSEM-EVAL score can be found in 'assembly1_rsem_eval.score' and the
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_keep_intermediate_files
  doc: "Keep temporary files generated by RSEM-EVAL. RSEM-EVAL creates a\ntemporary\
    \ directory, 'sample_name.temp', into which it puts all\nintermediate output files.\
    \ If this directory already exists,\nRSEM-EVAL overwrites all files generated\
    \ by previous RSEM-EVAL runs\ninside of it. By default, after RSEM-EVAL finishes,\
    \ the temporary\ndirectory is deleted. Set this option to prevent the deletion\
    \ of\nthis directory and the intermediate files inside of it. (Default:\noff)"
  type: Directory
  outputBinding:
    glob: $(inputs.in_keep_intermediate_files)
cwlVersion: v1.1
baseCommand:
- rsem-eval-calculate-score

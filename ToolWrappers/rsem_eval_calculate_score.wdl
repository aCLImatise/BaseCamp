version 1.0

task Rsemevalcalculatescore {
  input {
    Int? overlap_size
    File? transcript_length_parameters
    Int? transcript_length_mean
    Int? transcript_length_sd
    Boolean? paired_end
    Boolean? no_qualities
    Boolean? strand_specific
    Boolean? bowtie_two
    Boolean? sam
    Boolean? bam
    Int? p_slash_num_threads
    Boolean? output_bam
    Boolean? sampling_for_bam
    Int? seed
    Boolean? q_slash_quiet
    Boolean? h_slash_help
    File? sam_header_info
    Int? seed_length
    Int? tag
    File? bowtie_path
    Int? bowtie_n
    Int? bowtie_e
    Int? bowtie_m
    Int? bowtie_chunk_mbs
    Boolean? phred_three_three_quals
    Boolean? phred_six_four_quals
    Boolean? solexa_quals
    File? bowtie_two_path
    Int? bowtie_two_mismatch_rate
    Int? bowtie_two_k
    Int? bowtie_two_sensitivity_level
    Float? forward_prob
    Int? fragment_length_min
    Int? fragment_length_max
    Boolean? estimate_r_spd
    Int? num_r_spd_bins
    String? sam_tools_sort_mem
    Directory? keep_intermediate_files
    Directory? temporary_folder
    Boolean? time
    String r_sem_eval_calculate_score
    String sambam_formatted_file
    String assembly_fast_a_file
    String sample_name
    String sample_name_dot_score_dot_genes_dot_results
    String sample_name_dot_isoforms_dot_results
    String sample_name_dot_genes_dot_results
    String sample_name_dot_transcript_dot_sorted_do_tba_mdot_bai
    String sample_name_dot_time
    String sample_name_dot_stat
    Int rsemeval_score_can
  }
  command <<<
    rsem_eval_calculate_score \
      ~{r_sem_eval_calculate_score} \
      ~{sambam_formatted_file} \
      ~{assembly_fast_a_file} \
      ~{sample_name} \
      ~{sample_name_dot_score_dot_genes_dot_results} \
      ~{sample_name_dot_isoforms_dot_results} \
      ~{sample_name_dot_genes_dot_results} \
      ~{sample_name_dot_transcript_dot_sorted_do_tba_mdot_bai} \
      ~{sample_name_dot_time} \
      ~{sample_name_dot_stat} \
      ~{rsemeval_score_can} \
      ~{if defined(overlap_size) then ("--overlap-size " +  '"' + overlap_size + '"') else ""} \
      ~{if defined(transcript_length_parameters) then ("--transcript-length-parameters " +  '"' + transcript_length_parameters + '"') else ""} \
      ~{if defined(transcript_length_mean) then ("--transcript-length-mean " +  '"' + transcript_length_mean + '"') else ""} \
      ~{if defined(transcript_length_sd) then ("--transcript-length-sd " +  '"' + transcript_length_sd + '"') else ""} \
      ~{if (paired_end) then "--paired-end" else ""} \
      ~{if (no_qualities) then "--no-qualities" else ""} \
      ~{if (strand_specific) then "--strand-specific" else ""} \
      ~{if (bowtie_two) then "--bowtie2" else ""} \
      ~{if (sam) then "--sam" else ""} \
      ~{if (bam) then "--bam" else ""} \
      ~{if defined(p_slash_num_threads) then ("-p/--num-threads " +  '"' + p_slash_num_threads + '"') else ""} \
      ~{if (output_bam) then "--output-bam" else ""} \
      ~{if (sampling_for_bam) then "--sampling-for-bam" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (q_slash_quiet) then "-q/--quiet" else ""} \
      ~{if (h_slash_help) then "-h/--help" else ""} \
      ~{if defined(sam_header_info) then ("--sam-header-info " +  '"' + sam_header_info + '"') else ""} \
      ~{if defined(seed_length) then ("--seed-length " +  '"' + seed_length + '"') else ""} \
      ~{if defined(tag) then ("--tag " +  '"' + tag + '"') else ""} \
      ~{if defined(bowtie_path) then ("--bowtie-path " +  '"' + bowtie_path + '"') else ""} \
      ~{if defined(bowtie_n) then ("--bowtie-n " +  '"' + bowtie_n + '"') else ""} \
      ~{if defined(bowtie_e) then ("--bowtie-e " +  '"' + bowtie_e + '"') else ""} \
      ~{if defined(bowtie_m) then ("--bowtie-m " +  '"' + bowtie_m + '"') else ""} \
      ~{if defined(bowtie_chunk_mbs) then ("--bowtie-chunkmbs " +  '"' + bowtie_chunk_mbs + '"') else ""} \
      ~{if (phred_three_three_quals) then "--phred33-quals" else ""} \
      ~{if (phred_six_four_quals) then "--phred64-quals" else ""} \
      ~{if (solexa_quals) then "--solexa-quals" else ""} \
      ~{if defined(bowtie_two_path) then ("--bowtie2-path " +  '"' + bowtie_two_path + '"') else ""} \
      ~{if defined(bowtie_two_mismatch_rate) then ("--bowtie2-mismatch-rate " +  '"' + bowtie_two_mismatch_rate + '"') else ""} \
      ~{if defined(bowtie_two_k) then ("--bowtie2-k " +  '"' + bowtie_two_k + '"') else ""} \
      ~{if defined(bowtie_two_sensitivity_level) then ("--bowtie2-sensitivity-level " +  '"' + bowtie_two_sensitivity_level + '"') else ""} \
      ~{if defined(forward_prob) then ("--forward-prob " +  '"' + forward_prob + '"') else ""} \
      ~{if defined(fragment_length_min) then ("--fragment-length-min " +  '"' + fragment_length_min + '"') else ""} \
      ~{if defined(fragment_length_max) then ("--fragment-length-max " +  '"' + fragment_length_max + '"') else ""} \
      ~{if (estimate_r_spd) then "--estimate-rspd" else ""} \
      ~{if defined(num_r_spd_bins) then ("--num-rspd-bins " +  '"' + num_r_spd_bins + '"') else ""} \
      ~{if defined(sam_tools_sort_mem) then ("--samtools-sort-mem " +  '"' + sam_tools_sort_mem + '"') else ""} \
      ~{if (keep_intermediate_files) then "--keep-intermediate-files" else ""} \
      ~{if defined(temporary_folder) then ("--temporary-folder " +  '"' + temporary_folder + '"') else ""} \
      ~{if (time) then "--time" else ""}
  >>>
  parameter_meta {
    overlap_size: "The minimum overlap size required to join two reads together.\\n(Default: 0)"
    transcript_length_parameters: "Read the true transcript length distribution's mean and standard\\ndeviation from <file>. This option is mutually exclusive with\\n'--transcript-length-mean' and '--transcript-length-sd'. (Default:\\noff)"
    transcript_length_mean: "The mean of true transcript length distribution. This option is used\\ntogether with '--transcript-length-sd' and mutually exclusive with\\n'--estimate-transcript-length-distribution'. (Default: learned from\\nhuman Ensembl annotation and hg20 genome)"
    transcript_length_sd: "The standard deviation of true transcript length distribution. This\\noption is used together with '--transcript-length-mean' and mutually\\nexclusive with '--estimate-transcript-length-distribution'.\\n(Default: learned from human Ensembl annotation and hg20 genome)"
    paired_end: "Input reads are paired-end reads. (Default: off)"
    no_qualities: "Input reads do not contain quality scores. (Default: off)"
    strand_specific: "The RNA-Seq protocol used to generate the reads is strand specific,\\ni.e., all (upstream) reads are derived from the forward strand. This\\noption is equivalent to --forward-prob=1.0. With this option set, if\\nRSEM-EVAL runs the Bowtie/Bowtie 2 aligner, the '--norc'\\nBowtie/Bowtie 2 option will be used, which disables alignment to the\\nreverse strand of transcripts. (Default: off)"
    bowtie_two: "Use Bowtie 2 instead of Bowtie to align reads. Since currently\\nRSEM-EVAL does not handle indel, local and discordant alignments,\\nthe Bowtie2 parameters are set in a way to avoid those alignments.\\nIn particular, we use options '--sensitive --dpad 0 --gbar 99999999\\n--mp 1,1 --np 1 --score-min L,0,-0.1' by default. \\\"-0.1\\\", the last\\nparameter of '--score-min' is the negative value of the maximum\\nmismatch rate allowed. This rate can be set by option\\n'--bowtie2-mismatch-rate'. If reads are paired-end, we additionally\\nuse options '--no-mixed' and '--no-discordant'. (Default: off)"
    sam: "Input file is in SAM format. (Default: off)"
    bam: "Input file is in BAM format. (Default: off)"
    p_slash_num_threads: "Number of threads to use. Both Bowtie/Bowtie2, expression estimation\\nand 'samtools sort' will use this many threads. (Default: 1)"
    output_bam: "Generate BAM outputs. (Default: off)"
    sampling_for_bam: "When RSEM-EVAL generates a BAM file, instead of outputing all\\nalignments a read has with their posterior probabilities, one\\nalignment is sampled according to the posterior probabilities. The\\nsampling procedure includes the alignment to the \\\"noise\\\" transcript,\\nwhich does not appear in the BAM file. Only the sampled alignment\\nhas a weight of 1. All other alignments have weight 0. If the\\n\\\"noise\\\" transcript is sampled, all alignments appeared in the BAM\\nfile should have weight 0. (Default: off)"
    seed: "Set the seed for the random number generators used in calculating\\nposterior mean estimates and credibility intervals. The seed must be\\na non-negative 32 bit interger. (Default: off)"
    q_slash_quiet: "Suppress the output of logging information. (Default: off)"
    h_slash_help: "Show help information."
    sam_header_info: "RSEM-EVAL reads header information from input by default. If this\\noption is on, header information is read from the specified file.\\nFor the format of the file, please see SAM official website.\\n(Default: \\\"\\\")"
    seed_length: "Seed length used by the read aligner. Providing the correct value is\\nimportant for RSEM-EVAL. If RSEM-EVAL runs Bowtie, it uses this\\nvalue for Bowtie's seed length parameter. Any read with its or at\\nleast one of its mates' (for paired-end reads) length less than this\\nvalue will be ignored. If the references are not added poly(A)\\ntails, the minimum allowed value is 5, otherwise, the minimum\\nallowed value is 25. Note that this script will only check if the\\nvalue >= 5 and give a warning message if the value < 25 but >= 5.\\n(Default: 25)"
    tag: "The name of the optional field used in the SAM input for identifying\\na read with too many valid alignments. The field should have the\\nformat <tagName>:i:<value>, where a <value> bigger than 0 indicates\\na read with too many alignments. (Default: \\\"\\\")"
    bowtie_path: "The path to the Bowtie executables. (Default: the path to the Bowtie\\nexecutables is assumed to be in the user's PATH environment\\nvariable)"
    bowtie_n: "(Bowtie parameter) max # of mismatches in the seed. (Range: 0-3,\\nDefault: 2)"
    bowtie_e: "(Bowtie parameter) max sum of mismatch quality scores across the\\nalignment. (Default: 99999999)"
    bowtie_m: "(Bowtie parameter) suppress all alignments for a read if > <int>\\nvalid alignments exist. (Default: 200)"
    bowtie_chunk_mbs: "(Bowtie parameter) memory allocated for best first alignment\\ncalculation (Default: 0 - use Bowtie's default)"
    phred_three_three_quals: "Input quality scores are encoded as Phred+33. (Default: on)"
    phred_six_four_quals: "Input quality scores are encoded as Phred+64 (default for GA\\nPipeline ver. >= 1.3). (Default: off)"
    solexa_quals: "Input quality scores are solexa encoded (from GA Pipeline ver. <\\n1.3). (Default: off)"
    bowtie_two_path: "(Bowtie 2 parameter) The path to the Bowtie 2 executables. (Default:\\nthe path to the Bowtie 2 executables is assumed to be in the user's\\nPATH environment variable)"
    bowtie_two_mismatch_rate: "(Bowtie 2 parameter) The maximum mismatch rate allowed. (Default:\\n0.1)"
    bowtie_two_k: "(Bowtie 2 parameter) Find up to <int> alignments per read. (Default:\\n200)"
    bowtie_two_sensitivity_level: "(Bowtie 2 parameter) Set Bowtie 2's preset options in --end-to-end\\nmode. This option controls how hard Bowtie 2 tries to find\\nalignments. <string> must be one of \\\"very_fast\\\", \\\"fast\\\", \\\"sensitive\\\"\\nand \\\"very_sensitive\\\". The four candidates correspond to Bowtie 2's\\n\\\"--very-fast\\\", \\\"--fast\\\", \\\"--sensitive\\\" and \\\"--very-sensitive\\\"\\noptions. (Default: \\\"sensitive\\\" - use Bowtie 2's default)"
    forward_prob: "Probability of generating a read from the forward strand of a\\ntranscript. Set to 1 for a strand-specific protocol where all\\n(upstream) reads are derived from the forward strand, 0 for a\\nstrand-specific protocol where all (upstream) read are derived from\\nthe reverse strand, or 0.5 for a non-strand-specific protocol.\\n(Default: 0.5)"
    fragment_length_min: "Minimum read(SE)/fragment(PE) length allowed. This is also the value\\nfor the Bowtie/Bowtie2 -I option. (Default: 1)"
    fragment_length_max: "Maximum read(SE)/fragment(PE) length allowed. This is also the value\\nfor the Bowtie/Bowtie 2 -X option. (Default: 1000)"
    estimate_r_spd: "Set this option if you want to estimate the read start position\\ndistribution (RSPD) from data. Otherwise, RSEM-EVAL will use a\\nuniform RSPD. (Default: off)"
    num_r_spd_bins: "Number of bins in the RSPD. Only relevant when '--estimate-rspd' is\\nspecified. Use of the default setting is recommended. (Default: 20)"
    sam_tools_sort_mem: "Set the maximum memory per thread that can be used by 'samtools\\nsort'. <string> represents the memory and accepts suffices 'K/M/G'.\\nRSEM-EVAL will pass <string> to the '-m' option of 'samtools sort'.\\nPlease note that the default used here is different from the default\\nused by samtools. (Default: 1G)"
    keep_intermediate_files: "Keep temporary files generated by RSEM-EVAL. RSEM-EVAL creates a\\ntemporary directory, 'sample_name.temp', into which it puts all\\nintermediate output files. If this directory already exists,\\nRSEM-EVAL overwrites all files generated by previous RSEM-EVAL runs\\ninside of it. By default, after RSEM-EVAL finishes, the temporary\\ndirectory is deleted. Set this option to prevent the deletion of\\nthis directory and the intermediate files inside of it. (Default:\\noff)"
    temporary_folder: "Set where to put the temporary files generated by RSEM-EVAL. If the\\nfolder specified does not exist, RSEM-EVAL will try to create it.\\n(Default: sample_name.temp)"
    time: "Output time consumed by each step of RSEM-EVAL to\\n'sample_name.time'. (Default: off)"
    r_sem_eval_calculate_score: "SYNOPSIS\\nrsem-eval-calculate-score [options] upstream_read_file(s) assembly_fasta_file sample_name L\\nrsem-eval-calculate-score [options] --paired-end upstream_read_file(s) downstream_read_file(s) assembly_fasta_file sample_name L\\nrsem-eval-calculate-score [options] --sam/--bam [--paired-end] input assembly_fasta_file sample_name L"
    sambam_formatted_file: "SAM/BAM formatted input file. If \\\"-\\\" is specified for the filename,\\nSAM/BAM input is instead assumed to come from standard input.\\nRSEM-EVAL requires all alignments of the same read group together.\\nFor paired-end reads, RSEM-EVAL also requires the two mates of any\\nalignment be adjacent. See Description section for how to make input\\nfile obey RSEM-EVAL's requirements."
    assembly_fast_a_file: "A multi-FASTA file contains the assembly used for calculating\\nRSEM-EVAL score."
    sample_name: "The name of the sample analyzed. All output files are prefixed by\\nthis name (e.g., sample_name.isoforms.results)."
    sample_name_dot_score_dot_genes_dot_results: "'sample_name.score' stores the evaluation score for the evaluated\\nassembly. It contains 13 lines and each line contains a name and a\\nvalue separated by a tab.\\nThe first 6 lines provide: 'Score', the RSEM-EVAL score;\\n'BIC_penalty', the BIC penalty term;\\n'Prior_score_on_contig_lengths_(f_function_canceled)', the log score\\nof priors of contig lengths, with f function values excluded (f\\nfunction is defined in equation (4) at page 5 of Additional file 1,\\nwhich is the supplementary methods, tables and figures of our\\nDETONATE paper); 'Prior_score_on_contig_sequences', the log score of\\npriors of contig sequence bases;\\n'Data_likelihood_in_log_space_without_correction', the RSEM log data\\nlikelihood calculated with contig-level read generating\\nprobabilities mentioned in section 4 of Additional file 1;\\n'Correction_term_(f_function_canceled)', the correction term, with f\\nfunction values excluded. Score = BIC_penalty +\\nPrior_score_on_contig_lengths + Prior_score_on_contig_sequences +\\nData_likelihood_in_log_space_without_correction - Correction_term.\\nBecause both 'Prior_score_on_contig_lengths' and 'Correction_term'\\nshare the same f function values for each contig, the f function\\nvalues can be canceled out. Then\\n'Prior_score_on_contig_lengths_(f_function_canceled)' is the sum of\\nlog $c_{\\lambda}(\\ell)$ terms in equation (9) at page 5 of\\nAdditional file 1. 'Correction_term_(f_function_canceled)' is the\\nsum of log $(1 - p_{\\lambda_i})$ terms in equation (23) at page 9 of\\nAdditional file 1. For the correction term, we use $\\lambda_i$\\ninstead of $\\lambda'_i$ to make f function canceled out.\\nThe next 7 lines provide statistics that may help users to\\nunderstand the RSEM-EVAL score better. They are:\\n'Number_of_contigs', the number of contigs contained in the\\nassembly; 'Expected_number_of_aligned_reads_given_the_data', the\\nexpected number of reads assigned to each contig estimated using the\\ncontig-level read generating probabilities mentioned in section 4 of\\nAdditional file 1;\\n'Number_of_contigs_smaller_than_expected_read/fragment_length', the\\nnumber of contigs whose length is smaller than the expected\\nread/fragment length; 'Number_of_contigs_with_no_read_aligned_to',\\nthe number of contigs whose expected number of aligned reads is\\nsmaller than 0.005; 'Maximum_data_likelihood_in_log_space', the\\nmaximum data likelihood in log space calculated from RSEM by\\ntreating the assembly as \\\"true\\\" transcripts;\\n'Number_of_alignable_reads', the number of reads that have at least\\none alignment found by the aligner (Because\\n'rsem-calculate-expression' tries to use a very loose criteria to\\nfind alignments, reads with only low quality alignments may also be\\ncounted as alignable reads here); 'Number_of_alignments_in_total',\\nthe number of total alignments found by the aligner.\\n'sample_name.score.isoforms.results' and\\n'sample_name.score.genes.results' output \\\"corrected\\\" expression\\nlevels based on contig-level read generating probabilities mentioned\\nin section 4 of Additional file 1. Unlike\\n'sample_name.isoforms.results' and 'sample_name.genes.results',\\nwhich are calculated by treating the contigs as true transcripts,\\ncalculating 'sample_name.score.isoforms.results' and\\n'sample_name.score.genes.results' involves first estimating expected\\nread coverage for each contig and then convert the expected read\\ncoverage into contig-level read generating probabilities. This\\nprocedure is aware of that provided sequences are contigs and gives\\nbetter expression estimates for very short contigs. In addtion, the\\n'TPM' field is changed to 'CPM' field, which stands for contig per\\nmillion.\\nFor 'sample_name.score.isoforms.results', one additional column is\\nadded. The additional column is named as 'contig_impact_score' and\\ngives the contig impact score for each contig as described in\\nsection 5 of Additional file 1."
    sample_name_dot_isoforms_dot_results: "File containing isoform level expression estimates. The first line\\ncontains column names separated by the tab character. The format of\\neach line in the rest of this file is:\\ntranscript_id gene_id length effective_length expected_count TPM\\nFPKM IsoPct\\nFields are separated by the tab character.\\n'transcript_id' is the transcript name of this transcript. 'gene_id'\\nis the gene name of the gene which this transcript belongs to\\n(denote this gene as its parent gene). If no gene information is\\nprovided, 'gene_id' and 'transcript_id' are the same.\\n'length' is this transcript's sequence length (poly(A) tail is not\\ncounted). 'effective_length' counts only the positions that can\\ngenerate a valid fragment. If no poly(A) tail is added,\\n'effective_length' is equal to transcript length - mean fragment\\nlength + 1. If one transcript's effective length is less than 1,\\nthis transcript's both effective length and abundance estimates are\\nset to 0.\\n'expected_count' is the sum of the posterior probability of each\\nread comes from this transcript over all reads. Because 1) each read\\naligning to this transcript has a probability of being generated\\nfrom background noise; 2) RSEM-EVAL may filter some alignable low\\nquality reads, the sum of expected counts for all transcript are\\ngenerally less than the total number of reads aligned.\\n'TPM' stands for Transcripts Per Million. It is a relative measure\\nof transcript abundance. The sum of all transcripts' TPM is 1\\nmillion. 'FPKM' stands for Fragments Per Kilobase of transcript per\\nMillion mapped reads. It is another relative measure of transcript\\nabundance. If we define l_bar be the mean transcript length in a\\nsample, which can be calculated as\\nl_bar = \\sum_i TPM_i / 10^6 * effective_length_i (i goes through\\nevery transcript),\\nthe following equation is hold:\\nFPKM_i = 10^3 / l_bar * TPM_i.\\nWe can see that the sum of FPKM is not a constant across samples.\\n'IsoPct' stands for isoform percentage. It is the percentage of this\\ntranscript's abandunce over its parent gene's abandunce. If its\\nparent gene has only one isoform or the gene information is not\\nprovided, this field will be set to 100."
    sample_name_dot_genes_dot_results: "File containing gene level expression estimates. The first line\\ncontains column names separated by the tab character. The format of\\neach line in the rest of this file is:\\ngene_id transcript_id(s) length effective_length expected_count TPM\\nFPKM\\nFields are separated by the tab character.\\n'transcript_id(s)' is a comma-separated list of transcript_ids\\nbelonging to this gene. If no gene information is provided,\\n'gene_id' and 'transcript_id(s)' are identical (the\\n'transcript_id').\\nA gene's 'length' and 'effective_length' are defined as the weighted\\naverage of its transcripts' lengths and effective lengths (weighted\\nby 'IsoPct'). A gene's abundance estimates are just the sum of its\\ntranscripts' abundance estimates."
    sample_name_dot_transcript_dot_sorted_do_tba_mdot_bai: "Only generated when --output-bam is specified.\\n'sample_name.transcript.bam' is a BAM-formatted file of read\\nalignments in transcript coordinates. The MAPQ field of each\\nalignment is set to min(100, floor(-10 * log10(1.0 - w) + 0.5)),\\nwhere w is the posterior probability of that alignment being the\\ntrue mapping of a read. In addition, RSEM-EVAL pads a new tag\\nZW:f:value, where value is a single precision floating number\\nrepresenting the posterior probability. Because this file contains\\nall alignment lines produced by bowtie or user-specified aligners,\\nit can also be used as a replacement of the aligner generated\\nBAM/SAM file. For paired-end reads, if one mate has alignments but\\nthe other does not, this file marks the alignable mate as\\n\\\"unmappable\\\" (flag bit 0x4) and appends an optional field \\\"Z0:A:!\\\".\\n'sample_name.transcript.sorted.bam' and\\n'sample_name.transcript.sorted.bam.bai' are the sorted BAM file and\\nindices generated by samtools (included in RSEM-EVAL package)."
    sample_name_dot_time: "Only generated when --time is specified.\\nIt contains time (in seconds) consumed by building references,\\naligning reads, estimating expression levels and calculating\\ncredibility intervals."
    sample_name_dot_stat: "This is a folder instead of a file. All model related statistics are\\nstored in this folder. Use 'rsem-plot-model' can generate plots\\nusing this folder."
    rsemeval_score_can: "The RSEM-EVAL score can be found in 'assembly1_rsem_eval.score' and the"
  }
  output {
    File out_stdout = stdout()
    Directory out_keep_intermediate_files = "${in_keep_intermediate_files}"
  }
}
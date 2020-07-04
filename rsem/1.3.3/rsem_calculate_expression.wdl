version 1.0

task RsemCalculateExpression {
  input {
    Boolean? paired_end
    Boolean? no_qualities
    String? stranded_ness
    Int? p_slash_num_threads
    Boolean? alignments
    File? fai
    Boolean? bowtie_two
    Boolean? star
    Boolean? his_at_two_hca
    Boolean? append_names
    String? seed
    Boolean? single_cell_prior
    Boolean? calc_pm_e
    Boolean? calc_ci
    Boolean? q_slash_quiet
    Boolean? h_slash_help
    Boolean? sort_bam_by_read_name
    Boolean? no_bam_output
    Boolean? sampling_for_bam
    Boolean? output_genome_bam
    Boolean? sort_bam_by_coordinate
    String? sort_bam_memory_per_thread
    Int? seed_length
    Boolean? phred_three_three_quals
    Boolean? phred_six_four_quals
    Boolean? solexa_quals
    File? bowtie_path
    Int? bowtie_n
    Int? bowtie_e
    Int? bowtie_m
    Int? bowtie_chunk_mbs
    File? bowtie_two_path
    String? bowtie_two_mismatch_rate
    Int? bowtie_two_k
    String? bowtie_two_sensitivity_level
    File? star_path
    Boolean? star_gzipped_read_file
    Boolean? star_b_zipped_read_file
    Boolean? star_output_genome_bam
    File? his_at_two_path
    String? tag
    Int? fragment_length_min
    Int? fragment_length_max
    String? fragment_length_mean
    String? fragment_length_sd
    Boolean? estimate_r_spd
    Int? num_r_spd_bins
    Int? gibbs_burnin
    Int? gibbs_number_of_samples
    Int? gibbs_sampling_gap
    String? ci_credibility_level
    Int? ci_memory
    Int? ci_number_of_samples_per_count_vector
    Boolean? keep_intermediate_files
    String? temporary_folder
    Boolean? time
    Boolean? run_pr_sem
    String? chips_eq_peak_file
    String? chips_eq_target_read_files
    String? chips_eq_control_read_files
    String? chips_eq_read_files_multi_targets
    String? chips_eq_bed_files_multi_targets
    Boolean? cap_stacked_chips_eq_reads
    Int? n_max_stacked_chips_eq_reads
    String? partition_model
    Boolean? sam
    Boolean? bam
    Boolean? strand_specific
    String? forward_prob
    String sambamcram_formatted_file
    String reference_name
    String sample_name
    String sample_name_dot_time
    String sample_name_dot_log
    String sample_name_dot_stat
  }
  command <<<
    rsem-calculate-expression \
      ~{sambamcram_formatted_file} \
      ~{reference_name} \
      ~{sample_name} \
      ~{sample_name_dot_time} \
      ~{sample_name_dot_log} \
      ~{sample_name_dot_stat} \
      ~{true="--paired-end" false="" paired_end} \
      ~{true="--no-qualities" false="" no_qualities} \
      ~{if defined(stranded_ness) then ("--strandedness " +  '"' + stranded_ness + '"') else ""} \
      ~{if defined(p_slash_num_threads) then ("-p/--num-threads " +  '"' + p_slash_num_threads + '"') else ""} \
      ~{true="--alignments" false="" alignments} \
      ~{if defined(fai) then ("--fai " +  '"' + fai + '"') else ""} \
      ~{true="--bowtie2" false="" bowtie_two} \
      ~{true="--star" false="" star} \
      ~{true="--hisat2-hca" false="" his_at_two_hca} \
      ~{true="--append-names" false="" append_names} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{true="--single-cell-prior" false="" single_cell_prior} \
      ~{true="--calc-pme" false="" calc_pm_e} \
      ~{true="--calc-ci" false="" calc_ci} \
      ~{true="-q/--quiet" false="" q_slash_quiet} \
      ~{true="-h/--help" false="" h_slash_help} \
      ~{true="--sort-bam-by-read-name" false="" sort_bam_by_read_name} \
      ~{true="--no-bam-output" false="" no_bam_output} \
      ~{true="--sampling-for-bam" false="" sampling_for_bam} \
      ~{true="--output-genome-bam" false="" output_genome_bam} \
      ~{true="--sort-bam-by-coordinate" false="" sort_bam_by_coordinate} \
      ~{if defined(sort_bam_memory_per_thread) then ("--sort-bam-memory-per-thread " +  '"' + sort_bam_memory_per_thread + '"') else ""} \
      ~{if defined(seed_length) then ("--seed-length " +  '"' + seed_length + '"') else ""} \
      ~{true="--phred33-quals" false="" phred_three_three_quals} \
      ~{true="--phred64-quals" false="" phred_six_four_quals} \
      ~{true="--solexa-quals" false="" solexa_quals} \
      ~{if defined(bowtie_path) then ("--bowtie-path " +  '"' + bowtie_path + '"') else ""} \
      ~{if defined(bowtie_n) then ("--bowtie-n " +  '"' + bowtie_n + '"') else ""} \
      ~{if defined(bowtie_e) then ("--bowtie-e " +  '"' + bowtie_e + '"') else ""} \
      ~{if defined(bowtie_m) then ("--bowtie-m " +  '"' + bowtie_m + '"') else ""} \
      ~{if defined(bowtie_chunk_mbs) then ("--bowtie-chunkmbs " +  '"' + bowtie_chunk_mbs + '"') else ""} \
      ~{if defined(bowtie_two_path) then ("--bowtie2-path " +  '"' + bowtie_two_path + '"') else ""} \
      ~{if defined(bowtie_two_mismatch_rate) then ("--bowtie2-mismatch-rate " +  '"' + bowtie_two_mismatch_rate + '"') else ""} \
      ~{if defined(bowtie_two_k) then ("--bowtie2-k " +  '"' + bowtie_two_k + '"') else ""} \
      ~{if defined(bowtie_two_sensitivity_level) then ("--bowtie2-sensitivity-level " +  '"' + bowtie_two_sensitivity_level + '"') else ""} \
      ~{if defined(star_path) then ("--star-path " +  '"' + star_path + '"') else ""} \
      ~{true="--star-gzipped-read-file" false="" star_gzipped_read_file} \
      ~{true="--star-bzipped-read-file" false="" star_b_zipped_read_file} \
      ~{true="--star-output-genome-bam" false="" star_output_genome_bam} \
      ~{if defined(his_at_two_path) then ("--hisat2-path " +  '"' + his_at_two_path + '"') else ""} \
      ~{if defined(tag) then ("--tag " +  '"' + tag + '"') else ""} \
      ~{if defined(fragment_length_min) then ("--fragment-length-min " +  '"' + fragment_length_min + '"') else ""} \
      ~{if defined(fragment_length_max) then ("--fragment-length-max " +  '"' + fragment_length_max + '"') else ""} \
      ~{if defined(fragment_length_mean) then ("--fragment-length-mean " +  '"' + fragment_length_mean + '"') else ""} \
      ~{if defined(fragment_length_sd) then ("--fragment-length-sd " +  '"' + fragment_length_sd + '"') else ""} \
      ~{true="--estimate-rspd" false="" estimate_r_spd} \
      ~{if defined(num_r_spd_bins) then ("--num-rspd-bins " +  '"' + num_r_spd_bins + '"') else ""} \
      ~{if defined(gibbs_burnin) then ("--gibbs-burnin " +  '"' + gibbs_burnin + '"') else ""} \
      ~{if defined(gibbs_number_of_samples) then ("--gibbs-number-of-samples " +  '"' + gibbs_number_of_samples + '"') else ""} \
      ~{if defined(gibbs_sampling_gap) then ("--gibbs-sampling-gap " +  '"' + gibbs_sampling_gap + '"') else ""} \
      ~{if defined(ci_credibility_level) then ("--ci-credibility-level " +  '"' + ci_credibility_level + '"') else ""} \
      ~{if defined(ci_memory) then ("--ci-memory " +  '"' + ci_memory + '"') else ""} \
      ~{if defined(ci_number_of_samples_per_count_vector) then ("--ci-number-of-samples-per-count-vector " +  '"' + ci_number_of_samples_per_count_vector + '"') else ""} \
      ~{true="--keep-intermediate-files" false="" keep_intermediate_files} \
      ~{if defined(temporary_folder) then ("--temporary-folder " +  '"' + temporary_folder + '"') else ""} \
      ~{true="--time" false="" time} \
      ~{true="--run-pRSEM" false="" run_pr_sem} \
      ~{if defined(chips_eq_peak_file) then ("--chipseq-peak-file " +  '"' + chips_eq_peak_file + '"') else ""} \
      ~{if defined(chips_eq_target_read_files) then ("--chipseq-target-read-files " +  '"' + chips_eq_target_read_files + '"') else ""} \
      ~{if defined(chips_eq_control_read_files) then ("--chipseq-control-read-files " +  '"' + chips_eq_control_read_files + '"') else ""} \
      ~{if defined(chips_eq_read_files_multi_targets) then ("--chipseq-read-files-multi-targets " +  '"' + chips_eq_read_files_multi_targets + '"') else ""} \
      ~{if defined(chips_eq_bed_files_multi_targets) then ("--chipseq-bed-files-multi-targets " +  '"' + chips_eq_bed_files_multi_targets + '"') else ""} \
      ~{true="--cap-stacked-chipseq-reads" false="" cap_stacked_chips_eq_reads} \
      ~{if defined(n_max_stacked_chips_eq_reads) then ("--n-max-stacked-chipseq-reads " +  '"' + n_max_stacked_chips_eq_reads + '"') else ""} \
      ~{if defined(partition_model) then ("--partition-model " +  '"' + partition_model + '"') else ""} \
      ~{true="--sam" false="" sam} \
      ~{true="--bam" false="" bam} \
      ~{true="--strand-specific" false="" strand_specific} \
      ~{if defined(forward_prob) then ("--forward-prob " +  '"' + forward_prob + '"') else ""}
  >>>
  parameter_meta {
    paired_end: "Input reads are paired-end reads. (Default: off)"
    no_qualities: "Input reads do not contain quality scores. (Default: off)"
    stranded_ness: "This option defines the strandedness of the RNA-Seq reads. It recognizes three values: 'none', 'forward', and 'reverse'. 'none' refers to non-strand-specific protocols. 'forward' means all (upstream) reads are derived from the forward strand. 'reverse' means all (upstream) reads are derived from the reverse strand. If 'forward'/'reverse' is set, the '--norc'/'--nofw' Bowtie/Bowtie 2 option will also be enabled to avoid aligning reads to the opposite strand. For Illumina TruSeq Stranded protocols, please use 'reverse'. (Default: 'none')"
    p_slash_num_threads: "Number of threads to use. Both Bowtie/Bowtie2, expression estimation and 'samtools sort' will use this many threads. (Default: 1)"
    alignments: "Input file contains alignments in SAM/BAM/CRAM format. The exact file format will be determined automatically. (Default: off)"
    fai: "If the header section of input alignment file does not contain reference sequence information, this option should be turned on. <file> is a FAI format file containing each reference sequence's name and length. Please refer to the SAM official website for the details of FAI format. (Default: off)"
    bowtie_two: "Use Bowtie 2 instead of Bowtie to align reads. Since currently RSEM does not handle indel, local and discordant alignments, the Bowtie2 parameters are set in a way to avoid those alignments. In particular, we use options '--sensitive --dpad 0 --gbar 99999999 --mp 1,1 --np 1 --score-min L,0,-0.1' by default. The last parameter of '--score-min', '-0.1', is the negative of maximum mismatch rate. This rate can be set by option '--bowtie2-mismatch-rate'. If reads are paired-end, we additionally use options '--no-mixed' and '--no-discordant'. (Default: off)"
    star: "Use STAR to align reads. Alignment parameters are from ENCODE3's STAR-RSEM pipeline. To save computational time and memory resources, STAR's Output BAM file is unsorted. It is stored in RSEM's temporary directory with name as 'sample_name.bam'. Each STAR job will have its own private copy of the genome in memory. (Default: off)"
    his_at_two_hca: "Use HISAT2 to align reads to the transcriptome according to Human Cell Atlast SMART-Seq2 pipeline. In particular, we use HISAT parameters \"-k 10 --secondary --rg-id=$sampleToken --rg SM:$sampleToken --rg LB:$sampleToken --rg PL:ILLUMINA --rg PU:$sampleToken --new-summary --summary-file $sampleName.log --met-file $sampleName.hisat2.met.txt --met 5 --mp 1,1 --np 1 --score-min L,0,-0.1 --rdg 99999999,99999999 --rfg 99999999,99999999 --no-spliced-alignment --no-softclip --seed 12345\". If inputs are paired-end reads, we additionally use parameters \"--no-mixed --no-discordant\". (Default: off)"
    append_names: "If gene_name/transcript_name is available, append it to the end of gene_id/transcript_id (separated by '_') in files 'sample_name.isoforms.results' and 'sample_name.genes.results'. (Default: off)"
    seed: "Set the seed for the random number generators used in calculating posterior mean estimates and credibility intervals. The seed must be a non-negative 32 bit integer. (Default: off)"
    single_cell_prior: "By default, RSEM uses Dirichlet(1) as the prior to calculate posterior mean estimates and credibility intervals. However, much less genes are expressed in single cell RNA-Seq data. Thus, if you want to compute posterior mean estimates and/or credibility intervals and you have single-cell RNA-Seq data, you are recommended to turn on this option. Then RSEM will use Dirichlet(0.1) as the prior which encourage the sparsity of the expression levels. (Default: off)"
    calc_pm_e: "Run RSEM's collapsed Gibbs sampler to calculate posterior mean estimates. (Default: off)"
    calc_ci: "Calculate 95% credibility intervals and posterior mean estimates. The credibility level can be changed by setting '--ci-credibility-level'. (Default: off)"
    q_slash_quiet: "Suppress the output of logging information. (Default: off)"
    h_slash_help: "Show help information."
    sort_bam_by_read_name: "Sort BAM file aligned under transcript coordidate by read name. Setting this option on will produce deterministic maximum likelihood estimations from independent runs. Note that sorting will take long time and lots of memory. (Default: off)"
    no_bam_output: "Do not output any BAM file. (Default: off)"
    sampling_for_bam: "When RSEM generates a BAM file, instead of outputting all alignments a read has with their posterior probabilities, one alignment is sampled according to the posterior probabilities. The sampling procedure includes the alignment to the \"noise\" transcript, which does not appear in the BAM file. Only the sampled alignment has a weight of 1. All other alignments have weight 0. If the \"noise\" transcript is sampled, all alignments appeared in the BAM file should have weight 0. (Default: off)"
    output_genome_bam: "Generate a BAM file, 'sample_name.genome.bam', with alignments mapped to genomic coordinates and annotated with their posterior probabilities. In addition, RSEM will call samtools (included in RSEM package) to sort and index the bam file. 'sample_name.genome.sorted.bam' and 'sample_name.genome.sorted.bam.bai' will be generated. (Default: off)"
    sort_bam_by_coordinate: "Sort RSEM generated transcript and genome BAM files by coordinates and build associated indices. (Default: off)"
    sort_bam_memory_per_thread: "Set the maximum memory per thread that can be used by 'samtools sort'. <string> represents the memory and accepts suffices 'K/M/G'. RSEM will pass <string> to the '-m' option of 'samtools sort'. Note that the default used here is different from the default used by samtools. (Default: 1G)"
    seed_length: "Seed length used by the read aligner. Providing the correct value is important for RSEM. If RSEM runs Bowtie, it uses this value for Bowtie's seed length parameter. Any read with its or at least one of its mates' (for paired-end reads) length less than this value will be ignored. If the references are not added poly(A) tails, the minimum allowed value is 5, otherwise, the minimum allowed value is 25. Note that this script will only check if the value >= 5 and give a warning message if the value < 25 but >= 5. (Default: 25)"
    phred_three_three_quals: "Input quality scores are encoded as Phred+33. This option is used by Bowtie, Bowtie 2 and HISAT2. (Default: on)"
    phred_six_four_quals: "Input quality scores are encoded as Phred+64 (default for GA Pipeline ver. >= 1.3). This option is used by Bowtie, Bowtie 2 and HISAT2. (Default: off)"
    solexa_quals: "Input quality scores are solexa encoded (from GA Pipeline ver. < 1.3). This option is used by Bowtie, Bowtie 2 and HISAT2. (Default: off)"
    bowtie_path: "The path to the Bowtie executables. (Default: the path to the Bowtie executables is assumed to be in the user's PATH environment variable)"
    bowtie_n: "(Bowtie parameter) max # of mismatches in the seed. (Range: 0-3, Default: 2)"
    bowtie_e: "(Bowtie parameter) max sum of mismatch quality scores across the alignment. (Default: 99999999)"
    bowtie_m: "(Bowtie parameter) suppress all alignments for a read if > <int> valid alignments exist. (Default: 200)"
    bowtie_chunk_mbs: "(Bowtie parameter) memory allocated for best first alignment calculation (Default: 0 - use Bowtie's default)"
    bowtie_two_path: "(Bowtie 2 parameter) The path to the Bowtie 2 executables. (Default: the path to the Bowtie 2 executables is assumed to be in the user's PATH environment variable)"
    bowtie_two_mismatch_rate: "(Bowtie 2 parameter) The maximum mismatch rate allowed. (Default: 0.1)"
    bowtie_two_k: "(Bowtie 2 parameter) Find up to <int> alignments per read. (Default: 200)"
    bowtie_two_sensitivity_level: "(Bowtie 2 parameter) Set Bowtie 2's preset options in --end-to-end mode. This option controls how hard Bowtie 2 tries to find alignments. <string> must be one of \"very_fast\", \"fast\", \"sensitive\" and \"very_sensitive\". The four candidates correspond to Bowtie 2's \"--very-fast\", \"--fast\", \"--sensitive\" and \"--very-sensitive\" options. (Default: \"sensitive\" - use Bowtie 2's default)"
    star_path: "The path to STAR's executable. (Default: the path to STAR executable is assumed to be in user's PATH environment variable)"
    star_gzipped_read_file: "(STAR parameter) Input read file(s) is compressed by gzip. (Default: off)"
    star_b_zipped_read_file: "(STAR parameter) Input read file(s) is compressed by bzip2. (Default: off)"
    star_output_genome_bam: "(STAR parameter) Save the BAM file from STAR alignment under genomic coordinate to 'sample_name.STAR.genome.bam'. This file is NOT sorted by genomic coordinate. In this file, according to STAR's manual, 'paired ends of an alignment are always adjacent, and multiple alignments of a read are adjacent as well'. (Default: off)"
    his_at_two_path: "The path to HISAT2's executable. (Default: the path to HISAT2 executable is assumed to be in user's PATH environment variable)"
    tag: "The name of the optional field used in the SAM input for identifying a read with too many valid alignments. The field should have the format <tagName>:i:<value>, where a <value> bigger than 0 indicates a read with too many alignments. (Default: \"\")"
    fragment_length_min: "Minimum read/insert length allowed. This is also the value for the Bowtie/Bowtie2 -I option. (Default: 1)"
    fragment_length_max: "Maximum read/insert length allowed. This is also the value for the Bowtie/Bowtie 2 -X option. (Default: 1000)"
    fragment_length_mean: "(single-end data only) The mean of the fragment length distribution, which is assumed to be a Gaussian. (Default: -1, which disables use of the fragment length distribution)"
    fragment_length_sd: "(single-end data only) The standard deviation of the fragment length distribution, which is assumed to be a Gaussian. (Default: 0, which assumes that all fragments are of the same length, given by the rounded value of --fragment-length-mean)"
    estimate_r_spd: "Set this option if you want to estimate the read start position distribution (RSPD) from data. Otherwise, RSEM will use a uniform RSPD. (Default: off)"
    num_r_spd_bins: "Number of bins in the RSPD. Only relevant when '--estimate-rspd' is specified. Use of the default setting is recommended. (Default: 20)"
    gibbs_burnin: "The number of burn-in rounds for RSEM's Gibbs sampler. Each round passes over the entire data set once. If RSEM can use multiple threads, multiple Gibbs samplers will start at the same time and all samplers share the same burn-in number. (Default: 200)"
    gibbs_number_of_samples: "The total number of count vectors RSEM will collect from its Gibbs samplers. (Default: 1000)"
    gibbs_sampling_gap: "The number of rounds between two succinct count vectors RSEM collects. If the count vector after round N is collected, the count vector after round N + <int> will also be collected. (Default: 1)"
    ci_credibility_level: "The credibility level for credibility intervals. (Default: 0.95)"
    ci_memory: "Maximum size (in memory, MB) of the auxiliary buffer used for computing credibility intervals (CI). (Default: 1024)"
    ci_number_of_samples_per_count_vector: "The number of read generating probability vectors sampled per sampled count vector. The crebility intervals are calculated by first sampling P(C | D) and then sampling P(Theta | C) for each sampled count vector. This option controls how many Theta vectors are sampled per sampled count vector. (Default: 50)"
    keep_intermediate_files: "Keep temporary files generated by RSEM. RSEM creates a temporary directory, 'sample_name.temp', into which it puts all intermediate output files. If this directory already exists, RSEM overwrites all files generated by previous RSEM runs inside of it. By default, after RSEM finishes, the temporary directory is deleted. Set this option to prevent the deletion of this directory and the intermediate files inside of it. (Default: off)"
    temporary_folder: "Set where to put the temporary files generated by RSEM. If the folder specified does not exist, RSEM will try to create it. (Default: sample_name.temp)"
    time: "Output time consumed by each step of RSEM to 'sample_name.time'. (Default: off)"
    run_pr_sem: "Running prior-enhanced RSEM (pRSEM). Prior parameters, i.e. isoform's initial pseudo-count for RSEM's Gibbs sampling, will be learned from input RNA-seq data and an external data set. When pRSEM needs and only needs ChIP-seq peak information to partition isoforms (e.g. in pRSEM's default partition model), either ChIP-seq peak file (with the '--chipseq-peak-file' option) or ChIP-seq FASTQ files for target and input and the path for Bowtie executables are required (with the '--chipseq-target-read-files <string>', '--chipseq-control-read-files <string>', and '--bowtie-path <path> options), otherwise, ChIP-seq FASTQ files for target and control and the path to Bowtie executables are required. (Default: off)"
    chips_eq_peak_file: "Full path to a ChIP-seq peak file in ENCODE's narrowPeak, i.e. BED6+4, format. This file is used when running prior-enhanced RSEM in the default two-partition model. It partitions isoforms by whether they have ChIP-seq overlapping with their transcription start site region or not. Each partition will have its own prior parameter learned from a training set. This file can be either gzipped or ungzipped. (Default: \"\")"
    chips_eq_target_read_files: "Comma-separated full path of FASTQ read file(s) for ChIP-seq target. This option is used when running prior-enhanced RSEM. It provides information to calculate ChIP-seq peaks and signals. The file(s) can be either ungzipped or gzipped with a suffix '.gz' or '.gzip'. The options '--bowtie-path <path>' and '--chipseq-control-read-files <string>' must be defined when this option is specified. (Default: \"\")"
    chips_eq_control_read_files: "Comma-separated full path of FASTQ read file(s) for ChIP-seq conrol. This option is used when running prior-enhanced RSEM. It provides information to call ChIP-seq peaks. The file(s) can be either ungzipped or gzipped with a suffix '.gz' or '.gzip'. The options '--bowtie-path <path>' and '--chipseq-target-read-files <string>' must be defined when this option is specified. (Default: \"\")"
    chips_eq_read_files_multi_targets: "Comma-separated full path of FASTQ read files for multiple ChIP-seq targets. This option is used when running prior-enhanced RSEM, where prior is learned from multiple complementary data sets. It provides information to calculate ChIP-seq signals. All files can be either ungzipped or gzipped with a suffix '.gz' or '.gzip'. When this option is specified, the option '--bowtie-path <path>' must be defined and the option '--partition-model <string>' will be set to 'cmb_lgt' automatically. (Default: \"\")"
    chips_eq_bed_files_multi_targets: "Comma-separated full path of BED files for multiple ChIP-seq targets. This option is used when running prior-enhanced RSEM, where prior is learned from multiple complementary data sets. It provides information of ChIP-seq signals and must have at least the first six BED columns. All files can be either ungzipped or gzipped with a suffix '.gz' or '.gzip'. When this option is specified, the option '--partition-model <string>' will be set to 'cmb_lgt' automatically. (Default: \"\")"
    cap_stacked_chips_eq_reads: "Keep a maximum number of ChIP-seq reads that aligned to the same genomic interval. This option is used when running prior-enhanced RSEM, where prior is learned from multiple complementary data sets. This option is only in use when either '--chipseq-read-files-multi-targets <string>' or '--chipseq-bed-files-multi-targets <string>' is specified. (Default: off)"
    n_max_stacked_chips_eq_reads: "The maximum number of stacked ChIP-seq reads to keep. This option is used when running prior-enhanced RSEM, where prior is learned from multiple complementary data sets. This option is only in use when the option '--cap-stacked-chipseq-reads' is set. (Default: 5)"
    partition_model: "A keyword to specify the partition model used by prior-enhanced RSEM. It must be one of the following keywords: - pk Partitioned by whether an isoform has a ChIP-seq peak overlapping with its transcription start site (TSS) region. The TSS region is defined as [TSS-500bp, TSS+500bp]. For simplicity, we refer this type of peak as 'TSS peak' when explaining other keywords. - pk_lgtnopk First partitioned by TSS peak. Then, for isoforms in the 'no TSS peak' set, a logistic model is employed to further classify them into two partitions. - lm3, lm4, lm5, or lm6 Based on their ChIP-seq signals, isoforms are classified into 3, 4, 5, or 6 partitions by a linear regression model. - nopk_lm2pk, nopk_lm3pk, nopk_lm4pk, or nopk_lm5pk First partitioned by TSS peak. Then, for isoforms in the 'with TSS peak' set, a linear regression model is employed to further classify them into 2, 3, 4, or 5 partitions. - pk_lm2nopk, pk_lm3nopk, pk_lm4nopk, or pk_lm5nopk First partitioned by TSS peak. Then, for isoforms in the 'no TSS peak' set, a linear regression model is employed to further classify them into 2, 3, 4, or 5 partitions. - cmb_lgt Using a logistic regression to combine TSS signals from multiple complementary data sets and partition training set isoform into 'expressed' and 'not expressed'. This partition model is only in use when either '--chipseq-read-files-multi-targets <string>' or '--chipseq-bed-files-multi-targets <string> is specified. Parameters for all the above models are learned from a training set. For detailed explanations, please see prior-enhanced RSEM's paper. (Default: 'pk')"
    sam: "Inputs are alignments in SAM format. (Default: off)"
    bam: "Inputs are alignments in BAM format. (Default: off)"
    strand_specific: "Equivalent to '--strandedness forward'. (Default: off)"
    forward_prob: "Probability of generating a read from the forward strand of a transcript. Set to 1 for a strand-specific protocol where all (upstream) reads are derived from the forward strand, 0 for a strand-specific protocol where all (upstream) read are derived from the reverse strand, or 0.5 for a non-strand-specific protocol. (Default: off)"
    sambamcram_formatted_file: "SAM/BAM/CRAM formatted input file. If \"-\" is specified for the filename, the input is instead assumed to come from standard input. RSEM requires all alignments of the same read group together. For paired-end reads, RSEM also requires the two mates of any alignment be adjacent. In addition, RSEM does not allow the SEQ and QUAL fields to be empty. See Description section for how to make input file obey RSEM's requirements."
    reference_name: "The name of the reference used. The user must have run 'rsem-prepare-reference' with this reference_name before running this program."
    sample_name: "The name of the sample analyzed. All output files are prefixed by this name (e.g., sample_name.genes.results)"
    sample_name_dot_time: "Only generated when --time is specified. It contains time (in seconds) consumed by aligning reads, estimating expression levels and calculating credibility intervals."
    sample_name_dot_log: "Only generated when --alignments is not specified. It captures alignment statistics outputted from the user-specified aligner."
    sample_name_dot_stat: "This is a folder instead of a file. All model related statistics are stored in this folder. Use 'rsem-plot-model' can generate plots using this folder. 'sample_name.stat/sample_name.cnt' contains alignment statistics. The format and meanings of each field are described in 'cnt_file_description.txt' under RSEM directory. 'sample_name.stat/sample_name.model' stores RNA-Seq model parameters learned from the data. The format and meanings of each filed of this file are described in 'model_file_description.txt' under RSEM directory. The following four output files will be generated only by prior-enhanced RSEM - 'sample_name.stat/sample_name_prsem.all_tr_features' It stores isofrom features for deriving and assigning pRSEM prior. The first line is a header and the rest is one isoform per line. The description for each column is: * trid: transcript ID from input annotation * geneid: gene ID from input anntation * chrom: isoform's chromosome name * strand: isoform's strand name * start: isoform's end with the lowest genomic loci * end: isoform's end with the highest genomic loci * tss_mpp: average mappability of [TSS-500bp, TSS+500bp], where TSS is isoform's transcription start site, i.e. 5'-end * body_mpp: average mappability of (TSS+500bp, TES-500bp), where TES is isoform's transcription end site, i.e. 3'-end * tes_mpp: average mappability of [TES-500bp, TES+500bp] * pme_count: isoform's fragment or read count from RSEM's posterior mean estimates * tss: isoform's TSS loci * tss_pk: equal to 1 if isoform's [TSS-500bp, TSS+500bp] region overlaps with a RNA Pol II peak; 0 otherwise * is_training: equal to 1 if isoform is in the training set where Pol II prior is learned; 0 otherwise - 'sample_name.stat/sample_name_prsem.all_tr_prior' It stores prior parameters for every isoform. This file does not have a header. Each line contains a prior parameter and an isoform's transcript ID delimited by ` # `. - 'sample_name.stat/sample_name_uniform_prior_1.isoforms.results' RSEM's posterior mean estimates on the isoform level with an initial pseudo-count of one for every isoform. It is in the same format as the 'sample_name.isoforms.results'. - 'sample_name.stat/sample_name_uniform_prior_1.genes.results' RSEM's posterior mean estimates on the gene level with an initial pseudo-count of one for every isoform. It is in the same format as the 'sample_name.genes.results'. When learning prior from multiple external data sets in prior-enhanced RSEM, two additional output files will be generated. - 'sample_name.stat/sample_name.pval_LL' It stores a p-value and a log-likelihood. The p-value indicates whether the combination of multiple complementary data sets is informative for RNA-seq quantification. The log-likelihood shows how well pRSEM's Dirichlet-multinomial model fits the read counts of partitioned training set isoforms. - 'sample_name.stat/sample_name.lgt_mdl.RData' It stores an R object named 'glmmdl', which is a logistic regression model on the training set isoforms and multiple external data sets. In addition, extra columns will be added to 'sample_name.stat/all_tr_features' * is_expr: equal to 1 if isoform has an abundance >= 1 TPM and a non-zero read count from RSEM's posterior mean estimates; 0 otherwise * \"$external_data_set_basename\": log10 of external data's signal at [TSS-500, TSS+500]. Signal is the number of reads aligned within that interval and normalized to RPKM by read depth and interval length. It will be set to -4 if no read aligned to that interval. There are multiple columns like this one, where each represents an external data set. * prd_expr_prob: predicted probability from logistic regression model on whether this isoform is expressed or not. A probability higher than 0.5 is considered as expressed * partition: group index, to which this isoforms is partitioned * prior: prior parameter for this isoform"
  }
}
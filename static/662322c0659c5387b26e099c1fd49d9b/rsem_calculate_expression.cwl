class: CommandLineTool
id: rsem_calculate_expression.cwl
inputs:
- id: input
  doc: SAM/BAM/CRAM formatted input file. If "-" is specified for the filename, the
    input is instead assumed to come from standard input. RSEM requires all alignments
    of the same read group together. For paired-end reads, RSEM also requires the
    two mates of any alignment be adjacent. In addition, RSEM does not allow the SEQ
    and QUAL fields to be empty. See Description section for how to make input file
    obey RSEM's requirements.
  type: string
  inputBinding:
    position: 0
- id: reference_name
  doc: The name of the reference used. The user must have run 'rsem-prepare-reference'
    with this reference_name before running this program.
  type: string
  inputBinding:
    position: 1
- id: sample_name
  doc: The name of the sample analyzed. All output files are prefixed by this name
    (e.g., sample_name.genes.results)
  type: string
  inputBinding:
    position: 2
- id: p
  doc: "/--num-threads <int> Number of threads to use. Both Bowtie/Bowtie2, expression\
    \ estimation and 'samtools sort' will use this many threads. (Default: 1)"
  type: boolean
  inputBinding:
    prefix: -p
- id: alignments
  doc: 'Input file contains alignments in SAM/BAM/CRAM format. The exact file format
    will be determined automatically. (Default: off)'
  type: boolean
  inputBinding:
    prefix: --alignments
- id: fai
  doc: "If the header section of input alignment file does not contain reference sequence\
    \ information, this option should be turned on. <file> is a FAI format file containing\
    \ each reference sequence's name and length. Please refer to the SAM official\
    \ website for the details of FAI format. (Default: off)"
  type: File
  inputBinding:
    prefix: --fai
- id: bowtie2
  doc: "Use Bowtie 2 instead of Bowtie to align reads. Since currently RSEM does not\
    \ handle indel, local and discordant alignments, the Bowtie2 parameters are set\
    \ in a way to avoid those alignments. In particular, we use options '--sensitive\
    \ --dpad 0 --gbar 99999999 --mp 1,1 --np 1 --score-min L,0,-0.1' by default. The\
    \ last parameter of '--score-min', '-0.1', is the negative of maximum mismatch\
    \ rate. This rate can be set by option '--bowtie2-mismatch-rate'. If reads are\
    \ paired-end, we additionally use options '--no-mixed' and '--no-discordant'.\
    \ (Default: off)"
  type: boolean
  inputBinding:
    prefix: --bowtie2
- id: star
  doc: "Use STAR to align reads. Alignment parameters are from ENCODE3's STAR-RSEM\
    \ pipeline. To save computational time and memory resources, STAR's Output BAM\
    \ file is unsorted. It is stored in RSEM's temporary directory with name as 'sample_name.bam'.\
    \ Each STAR job will have its own private copy of the genome in memory. (Default:\
    \ off)"
  type: boolean
  inputBinding:
    prefix: --star
- id: hisat2_hca
  doc: 'Use HISAT2 to align reads to the transcriptome according to Human Cell Atlast
    SMART-Seq2 pipeline. In particular, we use HISAT parameters "-k 10 --secondary
    --rg-id=$sampleToken --rg SM:$sampleToken --rg LB:$sampleToken --rg PL:ILLUMINA
    --rg PU:$sampleToken --new-summary --summary-file $sampleName.log --met-file $sampleName.hisat2.met.txt
    --met 5 --mp 1,1 --np 1 --score-min L,0,-0.1 --rdg 99999999,99999999 --rfg 99999999,99999999
    --no-spliced-alignment --no-softclip --seed 12345". If inputs are paired-end reads,
    we additionally use parameters "--no-mixed --no-discordant". (Default: off)'
  type: boolean
  inputBinding:
    prefix: --hisat2-hca
- id: append_names
  doc: "If gene_name/transcript_name is available, append it to the end of gene_id/transcript_id\
    \ (separated by '_') in files 'sample_name.isoforms.results' and 'sample_name.genes.results'.\
    \ (Default: off)"
  type: boolean
  inputBinding:
    prefix: --append-names
- id: seed
  doc: 'Set the seed for the random number generators used in calculating posterior
    mean estimates and credibility intervals. The seed must be a non-negative 32 bit
    integer. (Default: off)'
  type: string
  inputBinding:
    prefix: --seed
- id: single_cell_prior
  doc: 'By default, RSEM uses Dirichlet(1) as the prior to calculate posterior mean
    estimates and credibility intervals. However, much less genes are expressed in
    single cell RNA-Seq data. Thus, if you want to compute posterior mean estimates
    and/or credibility intervals and you have single-cell RNA-Seq data, you are recommended
    to turn on this option. Then RSEM will use Dirichlet(0.1) as the prior which encourage
    the sparsity of the expression levels. (Default: off)'
  type: boolean
  inputBinding:
    prefix: --single-cell-prior
- id: calc_pm_e
  doc: "Run RSEM's collapsed Gibbs sampler to calculate posterior mean estimates.\
    \ (Default: off)"
  type: boolean
  inputBinding:
    prefix: --calc-pme
- id: calc_ci
  doc: "Calculate 95% credibility intervals and posterior mean estimates. The credibility\
    \ level can be changed by setting '--ci-credibility-level'. (Default: off)"
  type: boolean
  inputBinding:
    prefix: --calc-ci
- id: q
  doc: '/--quiet Suppress the output of logging information. (Default: off)'
  type: boolean
  inputBinding:
    prefix: -q
- id: sort_bam_by_read_name
  doc: 'Sort BAM file aligned under transcript coordidate by read name. Setting this
    option on will produce deterministic maximum likelihood estimations from independent
    runs. Note that sorting will take long time and lots of memory. (Default: off)'
  type: boolean
  inputBinding:
    prefix: --sort-bam-by-read-name
- id: no_bam_output
  doc: 'Do not output any BAM file. (Default: off)'
  type: boolean
  inputBinding:
    prefix: --no-bam-output
- id: sampling_for_bam
  doc: 'When RSEM generates a BAM file, instead of outputting all alignments a read
    has with their posterior probabilities, one alignment is sampled according to
    the posterior probabilities. The sampling procedure includes the alignment to
    the "noise" transcript, which does not appear in the BAM file. Only the sampled
    alignment has a weight of 1. All other alignments have weight 0. If the "noise"
    transcript is sampled, all alignments appeared in the BAM file should have weight
    0. (Default: off)'
  type: boolean
  inputBinding:
    prefix: --sampling-for-bam
- id: output_genome_bam
  doc: "Generate a BAM file, 'sample_name.genome.bam', with alignments mapped to genomic\
    \ coordinates and annotated with their posterior probabilities. In addition, RSEM\
    \ will call samtools (included in RSEM package) to sort and index the bam file.\
    \ 'sample_name.genome.sorted.bam' and 'sample_name.genome.sorted.bam.bai' will\
    \ be generated. (Default: off)"
  type: boolean
  inputBinding:
    prefix: --output-genome-bam
- id: sort_bam_by_coordinate
  doc: 'Sort RSEM generated transcript and genome BAM files by coordinates and build
    associated indices. (Default: off)'
  type: boolean
  inputBinding:
    prefix: --sort-bam-by-coordinate
- id: sort_bam_memory_per_thread
  doc: "Set the maximum memory per thread that can be used by 'samtools sort'. <string>\
    \ represents the memory and accepts suffices 'K/M/G'. RSEM will pass <string>\
    \ to the '-m' option of 'samtools sort'. Note that the default used here is different\
    \ from the default used by samtools. (Default: 1G)"
  type: string
  inputBinding:
    prefix: --sort-bam-memory-per-thread
- id: seed_length
  doc: "Seed length used by the read aligner. Providing the correct value is important\
    \ for RSEM. If RSEM runs Bowtie, it uses this value for Bowtie's seed length parameter.\
    \ Any read with its or at least one of its mates' (for paired-end reads) length\
    \ less than this value will be ignored. If the references are not added poly(A)\
    \ tails, the minimum allowed value is 5, otherwise, the minimum allowed value\
    \ is 25. Note that this script will only check if the value >= 5 and give a warning\
    \ message if the value < 25 but >= 5. (Default: 25)"
  type: long
  inputBinding:
    prefix: --seed-length
- id: phred33_quals
  doc: 'Input quality scores are encoded as Phred+33. This option is used by Bowtie,
    Bowtie 2 and HISAT2. (Default: on)'
  type: boolean
  inputBinding:
    prefix: --phred33-quals
- id: phred64_quals
  doc: 'Input quality scores are encoded as Phred+64 (default for GA Pipeline ver.
    >= 1.3). This option is used by Bowtie, Bowtie 2 and HISAT2. (Default: off)'
  type: boolean
  inputBinding:
    prefix: --phred64-quals
- id: solexa_quals
  doc: 'Input quality scores are solexa encoded (from GA Pipeline ver. < 1.3). This
    option is used by Bowtie, Bowtie 2 and HISAT2. (Default: off)'
  type: boolean
  inputBinding:
    prefix: --solexa-quals
- id: bowtie_path
  doc: "The path to the Bowtie executables. (Default: the path to the Bowtie executables\
    \ is assumed to be in the user's PATH environment variable)"
  type: File
  inputBinding:
    prefix: --bowtie-path
- id: bowtie_n
  doc: '(Bowtie parameter) max # of mismatches in the seed. (Range: 0-3, Default:
    2)'
  type: long
  inputBinding:
    prefix: --bowtie-n
- id: bowtie_e
  doc: '(Bowtie parameter) max sum of mismatch quality scores across the alignment.
    (Default: 99999999)'
  type: long
  inputBinding:
    prefix: --bowtie-e
- id: bowtie_m
  doc: '(Bowtie parameter) suppress all alignments for a read if > <int> valid alignments
    exist. (Default: 200)'
  type: long
  inputBinding:
    prefix: --bowtie-m
- id: bowtie_chunk_mbs
  doc: "(Bowtie parameter) memory allocated for best first alignment calculation (Default:\
    \ 0 - use Bowtie's default)"
  type: long
  inputBinding:
    prefix: --bowtie-chunkmbs
- id: bowtie2_path
  doc: "(Bowtie 2 parameter) The path to the Bowtie 2 executables. (Default: the path\
    \ to the Bowtie 2 executables is assumed to be in the user's PATH environment\
    \ variable)"
  type: File
  inputBinding:
    prefix: --bowtie2-path
- id: bowtie2_mismatch_rate
  doc: '(Bowtie 2 parameter) The maximum mismatch rate allowed. (Default: 0.1)'
  type: string
  inputBinding:
    prefix: --bowtie2-mismatch-rate
- id: bowtie2_k
  doc: '(Bowtie 2 parameter) Find up to <int> alignments per read. (Default: 200)'
  type: long
  inputBinding:
    prefix: --bowtie2-k
- id: bowtie2_sensitivity_level
  doc: "(Bowtie 2 parameter) Set Bowtie 2's preset options in --end-to-end mode. This\
    \ option controls how hard Bowtie 2 tries to find alignments. <string> must be\
    \ one of \"very_fast\", \"fast\", \"sensitive\" and \"very_sensitive\". The four\
    \ candidates correspond to Bowtie 2's \"--very-fast\", \"--fast\", \"--sensitive\"\
    \ and \"--very-sensitive\" options. (Default: \"sensitive\" - use Bowtie 2's default)"
  type: string
  inputBinding:
    prefix: --bowtie2-sensitivity-level
- id: star_path
  doc: "The path to STAR's executable. (Default: the path to STAR executable is assumed\
    \ to be in user's PATH environment variable)"
  type: File
  inputBinding:
    prefix: --star-path
- id: star_gzipped_read_file
  doc: '(STAR parameter) Input read file(s) is compressed by gzip. (Default: off)'
  type: boolean
  inputBinding:
    prefix: --star-gzipped-read-file
- id: star_b_zipped_read_file
  doc: '(STAR parameter) Input read file(s) is compressed by bzip2. (Default: off)'
  type: boolean
  inputBinding:
    prefix: --star-bzipped-read-file
- id: star_output_genome_bam
  doc: "(STAR parameter) Save the BAM file from STAR alignment under genomic coordinate\
    \ to 'sample_name.STAR.genome.bam'. This file is NOT sorted by genomic coordinate.\
    \ In this file, according to STAR's manual, 'paired ends of an alignment are always\
    \ adjacent, and multiple alignments of a read are adjacent as well'. (Default:\
    \ off)"
  type: boolean
  inputBinding:
    prefix: --star-output-genome-bam
- id: hisat2_path
  doc: "The path to HISAT2's executable. (Default: the path to HISAT2 executable is\
    \ assumed to be in user's PATH environment variable)"
  type: File
  inputBinding:
    prefix: --hisat2-path
- id: tag
  doc: 'The name of the optional field used in the SAM input for identifying a read
    with too many valid alignments. The field should have the format <tagName>:i:<value>,
    where a <value> bigger than 0 indicates a read with too many alignments. (Default:
    "")'
  type: string
  inputBinding:
    prefix: --tag
- id: fragment_length_min
  doc: 'Minimum read/insert length allowed. This is also the value for the Bowtie/Bowtie2
    -I option. (Default: 1)'
  type: long
  inputBinding:
    prefix: --fragment-length-min
- id: fragment_length_max
  doc: 'Maximum read/insert length allowed. This is also the value for the Bowtie/Bowtie
    2 -X option. (Default: 1000)'
  type: long
  inputBinding:
    prefix: --fragment-length-max
- id: fragment_length_mean
  doc: '(single-end data only) The mean of the fragment length distribution, which
    is assumed to be a Gaussian. (Default: -1, which disables use of the fragment
    length distribution)'
  type: string
  inputBinding:
    prefix: --fragment-length-mean
- id: fragment_length_sd
  doc: '(single-end data only) The standard deviation of the fragment length distribution,
    which is assumed to be a Gaussian. (Default: 0, which assumes that all fragments
    are of the same length, given by the rounded value of --fragment-length-mean)'
  type: string
  inputBinding:
    prefix: --fragment-length-sd
- id: estimate_r_spd
  doc: 'Set this option if you want to estimate the read start position distribution
    (RSPD) from data. Otherwise, RSEM will use a uniform RSPD. (Default: off)'
  type: boolean
  inputBinding:
    prefix: --estimate-rspd
- id: num_r_spd_bins
  doc: "Number of bins in the RSPD. Only relevant when '--estimate-rspd' is specified.\
    \ Use of the default setting is recommended. (Default: 20)"
  type: long
  inputBinding:
    prefix: --num-rspd-bins
- id: gibbs_burnin
  doc: "The number of burn-in rounds for RSEM's Gibbs sampler. Each round passes over\
    \ the entire data set once. If RSEM can use multiple threads, multiple Gibbs samplers\
    \ will start at the same time and all samplers share the same burn-in number.\
    \ (Default: 200)"
  type: long
  inputBinding:
    prefix: --gibbs-burnin
- id: gibbs_number_of_samples
  doc: 'The total number of count vectors RSEM will collect from its Gibbs samplers.
    (Default: 1000)'
  type: long
  inputBinding:
    prefix: --gibbs-number-of-samples
- id: gibbs_sampling_gap
  doc: 'The number of rounds between two succinct count vectors RSEM collects. If
    the count vector after round N is collected, the count vector after round N +
    <int> will also be collected. (Default: 1)'
  type: long
  inputBinding:
    prefix: --gibbs-sampling-gap
- id: ci_credibility_level
  doc: 'The credibility level for credibility intervals. (Default: 0.95)'
  type: string
  inputBinding:
    prefix: --ci-credibility-level
- id: ci_memory
  doc: 'Maximum size (in memory, MB) of the auxiliary buffer used for computing credibility
    intervals (CI). (Default: 1024)'
  type: long
  inputBinding:
    prefix: --ci-memory
- id: ci_number_of_samples_per_count_vector
  doc: 'The number of read generating probability vectors sampled per sampled count
    vector. The crebility intervals are calculated by first sampling P(C | D) and
    then sampling P(Theta | C) for each sampled count vector. This option controls
    how many Theta vectors are sampled per sampled count vector. (Default: 50)'
  type: long
  inputBinding:
    prefix: --ci-number-of-samples-per-count-vector
- id: keep_intermediate_files
  doc: "Keep temporary files generated by RSEM. RSEM creates a temporary directory,\
    \ 'sample_name.temp', into which it puts all intermediate output files. If this\
    \ directory already exists, RSEM overwrites all files generated by previous RSEM\
    \ runs inside of it. By default, after RSEM finishes, the temporary directory\
    \ is deleted. Set this option to prevent the deletion of this directory and the\
    \ intermediate files inside of it. (Default: off)"
  type: boolean
  inputBinding:
    prefix: --keep-intermediate-files
- id: temporary_folder
  doc: 'Set where to put the temporary files generated by RSEM. If the folder specified
    does not exist, RSEM will try to create it. (Default: sample_name.temp)'
  type: string
  inputBinding:
    prefix: --temporary-folder
- id: time
  doc: "Output time consumed by each step of RSEM to 'sample_name.time'. (Default:\
    \ off)"
  type: boolean
  inputBinding:
    prefix: --time
- id: run_pr_sem
  doc: "Running prior-enhanced RSEM (pRSEM). Prior parameters, i.e. isoform's initial\
    \ pseudo-count for RSEM's Gibbs sampling, will be learned from input RNA-seq data\
    \ and an external data set. When pRSEM needs and only needs ChIP-seq peak information\
    \ to partition isoforms (e.g. in pRSEM's default partition model), either ChIP-seq\
    \ peak file (with the '--chipseq-peak-file' option) or ChIP-seq FASTQ files for\
    \ target and input and the path for Bowtie executables are required (with the\
    \ '--chipseq-target-read-files <string>', '--chipseq-control-read-files <string>',\
    \ and '--bowtie-path <path> options), otherwise, ChIP-seq FASTQ files for target\
    \ and control and the path to Bowtie executables are required. (Default: off)"
  type: boolean
  inputBinding:
    prefix: --run-pRSEM
- id: chips_eq_peak_file
  doc: "Full path to a ChIP-seq peak file in ENCODE's narrowPeak, i.e. BED6+4, format.\
    \ This file is used when running prior-enhanced RSEM in the default two-partition\
    \ model. It partitions isoforms by whether they have ChIP-seq overlapping with\
    \ their transcription start site region or not. Each partition will have its own\
    \ prior parameter learned from a training set. This file can be either gzipped\
    \ or ungzipped. (Default: \"\")"
  type: string
  inputBinding:
    prefix: --chipseq-peak-file
- id: chips_eq_target_read_files
  doc: "Comma-separated full path of FASTQ read file(s) for ChIP-seq target. This\
    \ option is used when running prior-enhanced RSEM. It provides information to\
    \ calculate ChIP-seq peaks and signals. The file(s) can be either ungzipped or\
    \ gzipped with a suffix '.gz' or '.gzip'. The options '--bowtie-path <path>' and\
    \ '--chipseq-control-read-files <string>' must be defined when this option is\
    \ specified. (Default: \"\")"
  type: string
  inputBinding:
    prefix: --chipseq-target-read-files
- id: chips_eq_control_read_files
  doc: "Comma-separated full path of FASTQ read file(s) for ChIP-seq conrol. This\
    \ option is used when running prior-enhanced RSEM. It provides information to\
    \ call ChIP-seq peaks. The file(s) can be either ungzipped or gzipped with a suffix\
    \ '.gz' or '.gzip'. The options '--bowtie-path <path>' and '--chipseq-target-read-files\
    \ <string>' must be defined when this option is specified. (Default: \"\")"
  type: string
  inputBinding:
    prefix: --chipseq-control-read-files
- id: chips_eq_read_files_multi_targets
  doc: "Comma-separated full path of FASTQ read files for multiple ChIP-seq targets.\
    \ This option is used when running prior-enhanced RSEM, where prior is learned\
    \ from multiple complementary data sets. It provides information to calculate\
    \ ChIP-seq signals. All files can be either ungzipped or gzipped with a suffix\
    \ '.gz' or '.gzip'. When this option is specified, the option '--bowtie-path <path>'\
    \ must be defined and the option '--partition-model <string>' will be set to 'cmb_lgt'\
    \ automatically. (Default: \"\")"
  type: string
  inputBinding:
    prefix: --chipseq-read-files-multi-targets
- id: chips_eq_bed_files_multi_targets
  doc: "Comma-separated full path of BED files for multiple ChIP-seq targets. This\
    \ option is used when running prior-enhanced RSEM, where prior is learned from\
    \ multiple complementary data sets. It provides information of ChIP-seq signals\
    \ and must have at least the first six BED columns. All files can be either ungzipped\
    \ or gzipped with a suffix '.gz' or '.gzip'. When this option is specified, the\
    \ option '--partition-model <string>' will be set to 'cmb_lgt' automatically.\
    \ (Default: \"\")"
  type: string
  inputBinding:
    prefix: --chipseq-bed-files-multi-targets
- id: cap_stacked_chips_eq_reads
  doc: "Keep a maximum number of ChIP-seq reads that aligned to the same genomic interval.\
    \ This option is used when running prior-enhanced RSEM, where prior is learned\
    \ from multiple complementary data sets. This option is only in use when either\
    \ '--chipseq-read-files-multi-targets <string>' or '--chipseq-bed-files-multi-targets\
    \ <string>' is specified. (Default: off)"
  type: boolean
  inputBinding:
    prefix: --cap-stacked-chipseq-reads
- id: n_max_stacked_chips_eq_reads
  doc: "The maximum number of stacked ChIP-seq reads to keep. This option is used\
    \ when running prior-enhanced RSEM, where prior is learned from multiple complementary\
    \ data sets. This option is only in use when the option '--cap-stacked-chipseq-reads'\
    \ is set. (Default: 5)"
  type: long
  inputBinding:
    prefix: --n-max-stacked-chipseq-reads
- id: partition_model
  doc: "A keyword to specify the partition model used by prior-enhanced RSEM. It must\
    \ be one of the following keywords: - pk Partitioned by whether an isoform has\
    \ a ChIP-seq peak overlapping with its transcription start site (TSS) region.\
    \ The TSS region is defined as [TSS-500bp, TSS+500bp]. For simplicity, we refer\
    \ this type of peak as 'TSS peak' when explaining other keywords. - pk_lgtnopk\
    \ First partitioned by TSS peak. Then, for isoforms in the 'no TSS peak' set,\
    \ a logistic model is employed to further classify them into two partitions. -\
    \ lm3, lm4, lm5, or lm6 Based on their ChIP-seq signals, isoforms are classified\
    \ into 3, 4, 5, or 6 partitions by a linear regression model. - nopk_lm2pk, nopk_lm3pk,\
    \ nopk_lm4pk, or nopk_lm5pk First partitioned by TSS peak. Then, for isoforms\
    \ in the 'with TSS peak' set, a linear regression model is employed to further\
    \ classify them into 2, 3, 4, or 5 partitions. - pk_lm2nopk, pk_lm3nopk, pk_lm4nopk,\
    \ or pk_lm5nopk First partitioned by TSS peak. Then, for isoforms in the 'no TSS\
    \ peak' set, a linear regression model is employed to further classify them into\
    \ 2, 3, 4, or 5 partitions. - cmb_lgt Using a logistic regression to combine TSS\
    \ signals from multiple complementary data sets and partition training set isoform\
    \ into 'expressed' and 'not expressed'. This partition model is only in use when\
    \ either '--chipseq-read-files-multi-targets <string>' or '--chipseq-bed-files-multi-targets\
    \ <string> is specified. Parameters for all the above models are learned from\
    \ a training set. For detailed explanations, please see prior-enhanced RSEM's\
    \ paper. (Default: 'pk')"
  type: string
  inputBinding:
    prefix: --partition-model
- id: sam
  doc: 'Inputs are alignments in SAM format. (Default: off)'
  type: boolean
  inputBinding:
    prefix: --sam
- id: bam
  doc: 'Inputs are alignments in BAM format. (Default: off)'
  type: boolean
  inputBinding:
    prefix: --bam
- id: strand_specific
  doc: "Equivalent to '--strandedness forward'. (Default: off)"
  type: boolean
  inputBinding:
    prefix: --strand-specific
- id: forward_prob
  doc: 'Probability of generating a read from the forward strand of a transcript.
    Set to 1 for a strand-specific protocol where all (upstream) reads are derived
    from the forward strand, 0 for a strand-specific protocol where all (upstream)
    read are derived from the reverse strand, or 0.5 for a non-strand-specific protocol.
    (Default: off)'
  type: string
  inputBinding:
    prefix: --forward-prob
outputs: []
cwlVersion: v1.1
baseCommand:
- rsem-calculate-expression

class: CommandLineTool
id: methylpy_single_end_pipeline.cwl
inputs:
- id: in_forward_ref
  doc: "REVERSE_REF --ref-fasta REF_FASTA\n[--libraries LIBRARIES [LIBRARIES ...]]\n\
    [--path-to-output PATH_TO_OUTPUT]\n[--pbat PBAT]\n[--check-dependency CHECK_DEPENDENCY]\n\
    [--num-procs NUM_PROCS]\n[--sort-mem SORT_MEM]\n[--num-upstream-bases NUM_UPSTREAM_BASES]\n\
    [--num-downstream-bases NUM_DOWNSTREAM_BASES]\n[--generate-allc-file GENERATE_ALLC_FILE]\n\
    [--generate-mpileup-file GENERATE_MPILEUP_FILE]\n[--compress-output COMPRESS_OUTPUT]\n\
    [--bgzip BGZIP]\n[--path-to-bgzip PATH_TO_BGZIP]\n[--path-to-tabix PATH_TO_TABIX]\n\
    [--trim-reads TRIM_READS]\n[--path-to-cutadapt PATH_TO_CUTADAPT]\n[--path-to-aligner\
    \ PATH_TO_ALIGNER]\n[--aligner ALIGNER]\n[--aligner-options ALIGNER_OPTIONS [ALIGNER_OPTIONS\
    \ ...]]\n[--merge-by-max-mapq MERGE_BY_MAX_MAPQ]\n[--remove-clonal REMOVE_CLONAL]\n\
    [--path-to-picard PATH_TO_PICARD]\n[--keep-clonal-stats KEEP_CLONAL_STATS]\n[--java-options\
    \ JAVA_OPTIONS]\n[--path-to-samtools PATH_TO_SAMTOOLS]\n[--adapter-seq ADAPTER_SEQ]\n\
    [--remove-chr-prefix REMOVE_CHR_PREFIX]\n[--add-snp-info ADD_SNP_INFO]\n[--unmethylated-control\
    \ UNMETHYLATED_CONTROL]\n[--binom-test BINOM_TEST]\n[--sig-cutoff SIG_CUTOFF]\n\
    [--min-mapq MIN_MAPQ] [--min-cov MIN_COV]\n[--max-adapter-removal MAX_ADAPTER_REMOVAL]\n\
    [--overlap-length OVERLAP_LENGTH]\n[--zero-cap ZERO_CAP]\n[--error-rate ERROR_RATE]\n\
    [--min-qual-score MIN_QUAL_SCORE]\n[--min-read-len MIN_READ_LEN]\n[--min-base-quality\
    \ MIN_BASE_QUALITY]\n[--keep-temp-files KEEP_TEMP_FILES]"
  type: long
  inputBinding:
    prefix: --forward-ref
- id: in_read_files
  doc: "list of all the fastq files you would like to run\nthrough the pipeline. Note\
    \ that globbing is supported\nhere (i.e., you can use * in your paths) (default:\n\
    None)"
  type: string[]
  inputBinding:
    prefix: --read-files
- id: in_sample
  doc: "String indicating the name of the sample you are\nprocessing. It will be included\
    \ in the output files.\n(default: None)"
  type: string
  inputBinding:
    prefix: --sample
- id: in_ref_fast_a
  doc: "string indicating the path to a fasta file containing\nthe sequences you used\
    \ for mapping (default: None)"
  type: File
  inputBinding:
    prefix: --ref-fasta
- id: in_libraries
  doc: "list of library IDs (in the same order as the files\nlist) indiciating which\
    \ libraries each set of fastq\nfiles belong to. If you use a glob, you only need\
    \ to\nindicate the library ID for those fastqs once (i.e.,\nthe length of files\
    \ and libraries should be the same)\n(default: ['libA'])"
  type: string[]
  inputBinding:
    prefix: --libraries
- id: in_path_to_output
  doc: "Path to a directory where you would like the output to\nbe stored. The default\
    \ is the same directory as the\ninput fastqs. (default: )"
  type: File
  inputBinding:
    prefix: --path-to-output
- id: in_pb_at
  doc: "Boolean indicating whether to process data in PBAT\n(Post-Bisulfite Adaptor\
    \ Tagging) mode, in which reads\nwill be mapped to opposite strand of C-T converted\n\
    genome and the forward strand of G-A converted genome.\n(default: False)"
  type: boolean
  inputBinding:
    prefix: --pbat
- id: in_check_dependency
  doc: "Boolean indicating whether to check dependency\nrequirements are met. (default:\
    \ False)"
  type: boolean
  inputBinding:
    prefix: --check-dependency
- id: in_num_procs
  doc: "Number of processors you wish to use to parallelize\nthis function (default:\
    \ 1)"
  type: long
  inputBinding:
    prefix: --num-procs
- id: in_sort_mem
  doc: "Parameter to pass to unix sort with -S/--buffer-size\ncommand (default: 500M)"
  type: long
  inputBinding:
    prefix: --sort-mem
- id: in_num_upstream_bases
  doc: "Number of base(s) upstream of each cytosine that you\nwish to include in output\
    \ file. Recommend value 1 for\nNOMe-seq processing since the upstream base is\n\
    required to tell apart cytosine at GC context.\n(default: 0)"
  type: long
  inputBinding:
    prefix: --num-upstream-bases
- id: in_num_downstream_bases
  doc: "Number of base(s) downstream of each cytosine that you\nwish to include in\
    \ output file. Recommend value to be\nat least 1 to separate cytosines at different\
    \ sequence\ncontext. (default: 2)"
  type: long
  inputBinding:
    prefix: --num-downstream-bases
- id: in_generate_all_c_file
  doc: "Boolean indicating whether to generate the final\noutput file that contains\
    \ the methylation state of\neach cytosine. If set to be false, only alignment\
    \ file\n(in BAM format) will be generated. (default: True)"
  type: File
  inputBinding:
    prefix: --generate-allc-file
- id: in_generate_m_pile_up_file
  doc: "Boolean indicating whether to generate intermediate\nmpileup file to save\
    \ space. However, skipping mpileup\nstep may cause problem due to the nature of\
    \ python.\nNot skipping this step is recommended. (default: True)"
  type: File
  inputBinding:
    prefix: --generate-mpileup-file
- id: in_compress_output
  doc: "Boolean indicating whether to compress (by gzip) the\nfinal output (allc file(s)).\
    \ (default: True)"
  type: boolean
  inputBinding:
    prefix: --compress-output
- id: in_b_gzip
  doc: "Boolean indicating whether to bgzip compressed allc\nfiles and tabix index.\
    \ (default: False)"
  type: boolean
  inputBinding:
    prefix: --bgzip
- id: in_path_to_b_gzip
  doc: 'Path to bgzip installation (default: )'
  type: File
  inputBinding:
    prefix: --path-to-bgzip
- id: in_path_to_tab_ix
  doc: 'Path to tabix installation (default: )'
  type: File
  inputBinding:
    prefix: --path-to-tabix
- id: in_trim_reads
  doc: "Boolean indicating whether to trim reads using\ncutadapt. (default: True)"
  type: boolean
  inputBinding:
    prefix: --trim-reads
- id: in_path_to_cut_adapt
  doc: 'Path to cutadapt installation (default: )'
  type: File
  inputBinding:
    prefix: --path-to-cutadapt
- id: in_path_to_aligner
  doc: 'Path to bowtie/bowtie2 installation (default: )'
  type: File
  inputBinding:
    prefix: --path-to-aligner
- id: in_aligner
  doc: "Aligner to use. Currently, methylpy supports bowtie,\nbowtie2 and minimap2.\
    \ (default: bowtie2)"
  type: long
  inputBinding:
    prefix: --aligner
- id: in_aligner_options
  doc: "list of strings indicating options you would like\npassed to bowtie (e.g.,\
    \ \"-k 1 -l 2\") (default: None)"
  type: string[]
  inputBinding:
    prefix: --aligner-options
- id: in_merge_by_max_mapq
  doc: "Boolean indicates whether to merge alignment results\nfrom two converted genomes\
    \ by MAPQ score. Be default,\nwe only keep reads that are mapped to only one of\
    \ the\ntwo converted genomes. If this option is set to True,\nfor a read that\
    \ could be mapped to both converted\ngenomes, the alignment that achieves larger\
    \ MAPQ score\nwill be kept. (default: False)"
  type: long
  inputBinding:
    prefix: --merge-by-max-mapq
- id: in_remove_clonal
  doc: "Boolean indicates whether to remove clonal reads or\nnot (default: False)"
  type: boolean
  inputBinding:
    prefix: --remove-clonal
- id: in_path_to_picard
  doc: "The path to the picard.jar in picard tools. The jar\nfile can be downloaded\
    \ from\nhttps://broadinstitute.github.io/picard/index.html\n(default is current\
    \ dir) (default: )"
  type: File
  inputBinding:
    prefix: --path-to-picard
- id: in_keep_clonal_stats
  doc: "Boolean indicates whether to store the metric file\nfrom picard. (default:\
    \ True)"
  type: boolean
  inputBinding:
    prefix: --keep-clonal-stats
- id: in_java_options
  doc: "String indicating the option pass the java when\nrunning picard. (default:\
    \ -Xmx20g)"
  type: string
  inputBinding:
    prefix: --java-options
- id: in_path_to_sam_tools
  doc: 'Path to samtools installation (default: )'
  type: File
  inputBinding:
    prefix: --path-to-samtools
- id: in_adapter_seq
  doc: "sequence of an adapter that was ligated to the 3' end.\nThe adapter itself\
    \ and anything that follows is\ntrimmed. (default: AGATCGGAAGAGCACACGTCTG)"
  type: long
  inputBinding:
    prefix: --adapter-seq
- id: in_remove_chr_prefix
  doc: "Boolean indicates whether to remove in the final\noutput the \"chr\" prefix\
    \ in the chromosome name\n(default: True)"
  type: boolean
  inputBinding:
    prefix: --remove-chr-prefix
- id: in_add_snp_info
  doc: "Boolean indicates whether to add extra two columns in\nthe output (allc) file\
    \ regarding the genotype\ninformation of each site. The first (second) column\n\
    contain the number of basecalls that support the\nreference gentype (variant)\
    \ for nucleotides in the\nsequence context. (default: False)"
  type: boolean
  inputBinding:
    prefix: --add-snp-info
- id: in_unmethylated_control
  doc: "name of the chromosome/region that you want to use to\nestimate the non-conversion\
    \ rate of your sample, or\nthe non-conversion rate you would like to use.\nConsequently,\
    \ control is either a string, or a\ndecimal. If control is a string then it should\
    \ be in\nthe following format: \"chrom:start-end\". If you would\nlike to specify\
    \ an entire chromosome simply use\n\"chrom:\" (default: None)"
  type: double
  inputBinding:
    prefix: --unmethylated-control
- id: in_bin_om_test
  doc: "Indicates that you would like to perform a binomial\ntest on each cytosine\
    \ to delineate cytosines that are\nsignificantly methylated than noise due to\
    \ the failure\nof bisulfite conversion. (default: False)"
  type: string
  inputBinding:
    prefix: --binom-test
- id: in_sig_cut_off
  doc: "float indicating the adjusted p-value cutoff you wish\nto use for determining\
    \ whether or not a site is\nmethylated (default: 0.01)"
  type: double
  inputBinding:
    prefix: --sig-cutoff
- id: in_min_mapq
  doc: 'Minimum MAPQ for reads to be included. (default: 30)'
  type: long
  inputBinding:
    prefix: --min-mapq
- id: in_min_cov
  doc: "Integer indicating the minimum number of reads for a\nsite to be tested. (default:\
    \ 0)"
  type: long
  inputBinding:
    prefix: --min-cov
- id: in_max_adapter_removal
  doc: "Indicates the maximum number of times to try to remove\nadapters. Useful when\
    \ an adapter gets appended\nmultiple times. (default: None)"
  type: long
  inputBinding:
    prefix: --max-adapter-removal
- id: in_overlap_length
  doc: "Minimum overlap length. If the overlap between the\nread and the adapter is\
    \ shorter than LENGTH, the read\nis not modified. This reduces the no. of bases\
    \ trimmed\npurely due to short random adapter matches. (default:\nNone)"
  type: long
  inputBinding:
    prefix: --overlap-length
- id: in_zero_cap
  doc: "Flag that causes negative quality values to be set to\nzero (workaround to\
    \ avoid segmentation faults in BWA)\n(default: None)"
  type: string
  inputBinding:
    prefix: --zero-cap
- id: in_error_rate
  doc: "maximum allowed error rate (no. of errors divided by\nthe length of the matching\
    \ region) (default: None)"
  type: long
  inputBinding:
    prefix: --error-rate
- id: in_min_qual_score
  doc: "allows you to trim low-quality ends from reads before\nadapter removal. The\
    \ algorithm is the same as the one\nused by BWA (Subtract CUTOFF from all qualities;\n\
    compute partial sums from all indices to the end of\nthe sequence; cut sequence\
    \ at the index at which the\nsum is minimal). (default: 10)"
  type: long
  inputBinding:
    prefix: --min-qual-score
- id: in_min_read_len
  doc: "indicates the minimum length a read must be to be\nkept. Reads that are too\
    \ short even before adapter\nremoval are also discarded. In colorspace, an initial\n\
    primer is not counted. (default: 30)"
  type: long
  inputBinding:
    prefix: --min-read-len
- id: in_min_base_quality
  doc: "Integer indicating the minimum PHRED quality score for\na base to be included\
    \ in the mpileup file (and\nsubsequently to be considered for methylation\ncalling).\
    \ (default: 1)"
  type: long
  inputBinding:
    prefix: --min-base-quality
- id: in_keep_temp_files
  doc: "Boolean indicating that you would like to keep the\nintermediate files generated\
    \ by this function. This\ncan be useful for debugging, but in general should be\n\
    left False. (default: False)\n"
  type: boolean
  inputBinding:
    prefix: --keep-temp-files
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_path_to_output
  doc: "Path to a directory where you would like the output to\nbe stored. The default\
    \ is the same directory as the\ninput fastqs. (default: )"
  type: File
  outputBinding:
    glob: $(inputs.in_path_to_output)
cwlVersion: v1.1
baseCommand:
- methylpy
- single-end-pipeline

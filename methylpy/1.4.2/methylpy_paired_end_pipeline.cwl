class: CommandLineTool
id: methylpy_paired_end_pipeline.cwl
inputs:
- id: read_1_files
  doc: 'list of all the read 1 fastq files you would like to run through the pipeline.
    Note that globbing is supported here (i.e., you can use * in your paths) (default:
    None)'
  type: string[]
  inputBinding:
    prefix: --read1-files
- id: read_2_files
  doc: 'list of all the read 2 fastq files you would like to run through the pipeline.
    Note that globbing is supported here (i.e., you can use * in your paths) (default:
    None)'
  type: string[]
  inputBinding:
    prefix: --read2-files
- id: sample
  doc: 'String indicating the name of the sample you are processing. It will be included
    in the output files. (default: None)'
  type: string
  inputBinding:
    prefix: --sample
- id: forward_ref
  doc: 'string indicating the path to the forward strand reference created by build_ref
    (default: None)'
  type: string
  inputBinding:
    prefix: --forward-ref
- id: reverse_ref
  doc: 'string indicating the path to the reverse strand reference created by build_ref
    (default: None)'
  type: string
  inputBinding:
    prefix: --reverse-ref
- id: ref_fast_a
  doc: 'string indicating the path to a fasta file containing the sequences you used
    for mapping (default: None)'
  type: string
  inputBinding:
    prefix: --ref-fasta
- id: libraries
  doc: "list of library IDs (in the same order as the files list) indiciating which\
    \ libraries each set of fastq files belong to. If you use a glob, you only need\
    \ to indicate the library ID for those fastqs once (i.e., the length of files\
    \ and libraries should be the same) (default: ['libA'])"
  type: string[]
  inputBinding:
    prefix: --libraries
- id: path_to_output
  doc: 'Path to a directory where you would like the output to be stored. The default
    is the same directory as the input fastqs. (default: )'
  type: File
  inputBinding:
    prefix: --path-to-output
- id: pb_at
  doc: 'Boolean indicating whether to process data in PBAT (Post-Bisulfite Adaptor
    Tagging) mode, in which reads will be mapped to opposite strand of C-T converted
    genome and the forward strand of G-A converted genome. (default: False)'
  type: string
  inputBinding:
    prefix: --pbat
- id: check_dependency
  doc: 'Boolean indicating whether to check dependency requirements are met. (default:
    False)'
  type: string
  inputBinding:
    prefix: --check-dependency
- id: num_procs
  doc: 'Number of processors you wish to use to parallelize this function (default:
    1)'
  type: string
  inputBinding:
    prefix: --num-procs
- id: sort_mem
  doc: 'Parameter to pass to unix sort with -S/--buffer-size command (default: 500M)'
  type: string
  inputBinding:
    prefix: --sort-mem
- id: num_upstream_bases
  doc: 'Number of base(s) upstream of each cytosine that you wish to include in output
    file. Recommend value 1 for NOMe-seq processing since the upstream base is required
    to tell apart cytosine at GC context. (default: 0)'
  type: string
  inputBinding:
    prefix: --num-upstream-bases
- id: num_downstream_bases
  doc: 'Number of base(s) downstream of each cytosine that you wish to include in
    output file. Recommend value to be at least 1 to separate cytosines at different
    sequence contexts. (default: 2)'
  type: string
  inputBinding:
    prefix: --num-downstream-bases
- id: generate_all_c_file
  doc: 'Boolean indicating whether to generate the final output file that contains
    the methylation state of each cytosine. If set to be false, only alignment file
    (in BAM format) will be generated. (default: True)'
  type: string
  inputBinding:
    prefix: --generate-allc-file
- id: generate_m_pile_up_file
  doc: 'Boolean indicating whether to generate intermediate mpileup file to save space.
    However, skipping mpileup step may cause problem due to the nature of python.
    Not skipping this step is recommended. (default: True)'
  type: string
  inputBinding:
    prefix: --generate-mpileup-file
- id: compress_output
  doc: 'Boolean indicating whether to compress (by gzip) the final output (allc file(s)).
    (default: True)'
  type: string
  inputBinding:
    prefix: --compress-output
- id: b_gzip
  doc: 'Boolean indicating whether to bgzip compressed allc files and tabix index.
    (default: False)'
  type: string
  inputBinding:
    prefix: --bgzip
- id: path_to_b_gzip
  doc: 'Path to bgzip installation (default: )'
  type: File
  inputBinding:
    prefix: --path-to-bgzip
- id: path_to_tab_ix
  doc: 'Path to tabix installation (default: )'
  type: File
  inputBinding:
    prefix: --path-to-tabix
- id: trim_reads
  doc: 'Boolean indicating whether to trim reads using cutadapt. (default: True)'
  type: string
  inputBinding:
    prefix: --trim-reads
- id: path_to_cut_adapt
  doc: 'Path to cutadapt installation (default: )'
  type: File
  inputBinding:
    prefix: --path-to-cutadapt
- id: path_to_aligner
  doc: 'Path to bowtie/bowtie2 installation (default: )'
  type: File
  inputBinding:
    prefix: --path-to-aligner
- id: aligner
  doc: 'Aligner to use. Currently, methylpy supports bowtie, bowtie2 and minimap2.
    (default: bowtie2)'
  type: string
  inputBinding:
    prefix: --aligner
- id: aligner_options
  doc: 'list of strings indicating options you would like passed to bowtie (e.g.,
    "-k 1 -l 2") (default: None)'
  type: string[]
  inputBinding:
    prefix: --aligner-options
- id: merge_by_max_mapq
  doc: 'Boolean indicates whether to merge alignment results from two converted genomes
    by MAPQ score. Be default, we only keep read pairs that are mapped to only one
    of the two converted genomes. If this option is set to True, for a read pair that
    could be mapped to both converted genomes, the alignment that achieves larger
    MAPQ score will be kept. (default: False)'
  type: string
  inputBinding:
    prefix: --merge-by-max-mapq
- id: remove_clonal
  doc: 'Boolean indicates whether to remove clonal reads or not (default: False)'
  type: string
  inputBinding:
    prefix: --remove-clonal
- id: path_to_picard
  doc: 'The path to the picard.jar in picard tools. The jar file can be downloaded
    from https://broadinstitute.github.io/picard/index.html (default is current dir)
    (default: )'
  type: File
  inputBinding:
    prefix: --path-to-picard
- id: keep_clonal_stats
  doc: 'Boolean indicates whether to store the metric file from picard. (default:
    True)'
  type: string
  inputBinding:
    prefix: --keep-clonal-stats
- id: java_options
  doc: 'String indicating the option pass the java when running picard. (default:
    -Xmx20g)'
  type: string
  inputBinding:
    prefix: --java-options
- id: path_to_sam_tools
  doc: 'Path to samtools installation (default: )'
  type: File
  inputBinding:
    prefix: --path-to-samtools
- id: adapter_seq_read_1
  doc: "sequence of an adapter that was ligated to the 3' end of read 1. The adapter\
    \ itself and anything that follows is trimmed. (default: AGATCGGAAGAGCACACGTCTGAAC)"
  type: string
  inputBinding:
    prefix: --adapter-seq-read1
- id: adapter_seq_read_2
  doc: "sequence of an adapter that was ligated to the 3' end of read 2. The adapter\
    \ itself and anything that follows is trimmed. (default: AGATCGGAAGAGCGTCGTGTAGGGA)"
  type: string
  inputBinding:
    prefix: --adapter-seq-read2
- id: remove_chr_prefix
  doc: 'Boolean indicates whether to remove in the final output the "chr" prefix in
    the chromosome name (default: True)'
  type: string
  inputBinding:
    prefix: --remove-chr-prefix
- id: add_snp_info
  doc: 'Boolean indicates whether to add extra two columns in the output (allc) file
    regarding the genotype information of each site. The first (second) column contain
    the number of basecalls that support the reference gentype (variant) for nucleotides
    in the sequence context. (default: False)'
  type: string
  inputBinding:
    prefix: --add-snp-info
- id: unmethylated_control
  doc: 'name of the chromosome/region that you want to use to estimate the non-conversion
    rate of your sample, or the non-conversion rate you would like to use. Consequently,
    control is either a string, or a decimal. If control is a string then it should
    be in the following format: "chrom:start-end". If you would like to specify an
    entire chromosome simply use "chrom:" (default: None)'
  type: string
  inputBinding:
    prefix: --unmethylated-control
- id: bin_om_test
  doc: 'Indicates that you would like to perform a binomial test on each cytosine
    to delineate cytosines that are significantly methylated than noise due to the
    failure of bisulfite conversion. (default: False)'
  type: string
  inputBinding:
    prefix: --binom-test
- id: sig_cut_off
  doc: 'float indicating the adjusted p-value cutoff you wish to use for determining
    whether or not a site is methylated (default: 0.01)'
  type: string
  inputBinding:
    prefix: --sig-cutoff
- id: min_mapq
  doc: 'Minimum MAPQ for reads to be included. (default: 30)'
  type: long
  inputBinding:
    prefix: --min-mapq
- id: min_cov
  doc: 'Integer indicating the minimum number of reads for a site to be tested. (default:
    0)'
  type: long
  inputBinding:
    prefix: --min-cov
- id: max_adapter_removal
  doc: 'Indicates the maximum number of times to try to remove adapters. Useful when
    an adapter gets appended multiple times. (default: None)'
  type: long
  inputBinding:
    prefix: --max-adapter-removal
- id: overlap_length
  doc: 'Minimum overlap length. If the overlap between the read and the adapter is
    shorter than LENGTH, the read is not modified. This reduces the no. of bases trimmed
    purely due to short random adapter matches. (default: None)'
  type: string
  inputBinding:
    prefix: --overlap-length
- id: zero_cap
  doc: 'Flag that causes negative quality values to be set to zero (workaround to
    avoid segmentation faults in BWA) (default: None)'
  type: string
  inputBinding:
    prefix: --zero-cap
- id: error_rate
  doc: 'maximum allowed error rate (no. of errors divided by the length of the matching
    region) (default: None)'
  type: string
  inputBinding:
    prefix: --error-rate
- id: min_qual_score
  doc: 'allows you to trim low-quality ends from reads before adapter removal. The
    algorithm is the same as the one used by BWA (Subtract CUTOFF from all qualities;
    compute partial sums from all indices to the end of the sequence; cut sequence
    at the index at which the sum is minimal). (default: 10)'
  type: long
  inputBinding:
    prefix: --min-qual-score
- id: min_read_len
  doc: 'indicates the minimum length a read must be to be kept. Reads that are too
    short even before adapter removal are also discarded. In colorspace, an initial
    primer is not counted. (default: 30)'
  type: long
  inputBinding:
    prefix: --min-read-len
- id: min_base_quality
  doc: 'Integer indicating the minimum PHRED quality score for a base to be included
    in the mpileup file (and subsequently to be considered for methylation calling).
    (default: 1)'
  type: long
  inputBinding:
    prefix: --min-base-quality
- id: keep_temp_files
  doc: 'Boolean indicating that you would like to keep the intermediate files generated
    by this function. This can be useful for debugging, but in general should be left
    False. (default: False)'
  type: string
  inputBinding:
    prefix: --keep-temp-files
outputs: []
cwlVersion: v1.1
baseCommand:
- methylpy
- paired-end-pipeline

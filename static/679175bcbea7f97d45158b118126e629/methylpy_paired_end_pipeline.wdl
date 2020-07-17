version 1.0

task MethylpyPairedEndPipeline {
  input {
    Array[String] read_one_files
    Array[String] read_two_files
    String? sample
    String? forward_ref
    String? reverse_ref
    String? ref_fast_a
    Array[String] libraries
    File? path_to_output
    String? pb_at
    String? check_dependency
    String? num_procs
    String? sort_mem
    String? num_upstream_bases
    String? num_downstream_bases
    String? generate_all_c_file
    String? generate_m_pile_up_file
    String? compress_output
    String? b_gzip
    File? path_to_b_gzip
    File? path_to_tab_ix
    String? trim_reads
    File? path_to_cut_adapt
    File? path_to_aligner
    String? aligner
    Array[String] aligner_options
    String? merge_by_max_mapq
    String? remove_clonal
    File? path_to_picard
    String? keep_clonal_stats
    String? java_options
    File? path_to_sam_tools
    String? adapter_seq_read_one
    String? adapter_seq_read_two
    String? remove_chr_prefix
    String? add_snp_info
    String? unmethylated_control
    String? bin_om_test
    String? sig_cut_off
    Int? min_mapq
    Int? min_cov
    Int? max_adapter_removal
    String? overlap_length
    String? zero_cap
    String? error_rate
    Int? min_qual_score
    Int? min_read_len
    Int? min_base_quality
    String? keep_temp_files
  }
  command <<<
    methylpy paired-end-pipeline \
      ~{if defined(read_one_files) then ("--read1-files " +  '"' + read_one_files + '"') else ""} \
      ~{if defined(read_two_files) then ("--read2-files " +  '"' + read_two_files + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(forward_ref) then ("--forward-ref " +  '"' + forward_ref + '"') else ""} \
      ~{if defined(reverse_ref) then ("--reverse-ref " +  '"' + reverse_ref + '"') else ""} \
      ~{if defined(ref_fast_a) then ("--ref-fasta " +  '"' + ref_fast_a + '"') else ""} \
      ~{if defined(libraries) then ("--libraries " +  '"' + libraries + '"') else ""} \
      ~{if defined(path_to_output) then ("--path-to-output " +  '"' + path_to_output + '"') else ""} \
      ~{if defined(pb_at) then ("--pbat " +  '"' + pb_at + '"') else ""} \
      ~{if defined(check_dependency) then ("--check-dependency " +  '"' + check_dependency + '"') else ""} \
      ~{if defined(num_procs) then ("--num-procs " +  '"' + num_procs + '"') else ""} \
      ~{if defined(sort_mem) then ("--sort-mem " +  '"' + sort_mem + '"') else ""} \
      ~{if defined(num_upstream_bases) then ("--num-upstream-bases " +  '"' + num_upstream_bases + '"') else ""} \
      ~{if defined(num_downstream_bases) then ("--num-downstream-bases " +  '"' + num_downstream_bases + '"') else ""} \
      ~{if defined(generate_all_c_file) then ("--generate-allc-file " +  '"' + generate_all_c_file + '"') else ""} \
      ~{if defined(generate_m_pile_up_file) then ("--generate-mpileup-file " +  '"' + generate_m_pile_up_file + '"') else ""} \
      ~{if defined(compress_output) then ("--compress-output " +  '"' + compress_output + '"') else ""} \
      ~{if defined(b_gzip) then ("--bgzip " +  '"' + b_gzip + '"') else ""} \
      ~{if defined(path_to_b_gzip) then ("--path-to-bgzip " +  '"' + path_to_b_gzip + '"') else ""} \
      ~{if defined(path_to_tab_ix) then ("--path-to-tabix " +  '"' + path_to_tab_ix + '"') else ""} \
      ~{if defined(trim_reads) then ("--trim-reads " +  '"' + trim_reads + '"') else ""} \
      ~{if defined(path_to_cut_adapt) then ("--path-to-cutadapt " +  '"' + path_to_cut_adapt + '"') else ""} \
      ~{if defined(path_to_aligner) then ("--path-to-aligner " +  '"' + path_to_aligner + '"') else ""} \
      ~{if defined(aligner) then ("--aligner " +  '"' + aligner + '"') else ""} \
      ~{if defined(aligner_options) then ("--aligner-options " +  '"' + aligner_options + '"') else ""} \
      ~{if defined(merge_by_max_mapq) then ("--merge-by-max-mapq " +  '"' + merge_by_max_mapq + '"') else ""} \
      ~{if defined(remove_clonal) then ("--remove-clonal " +  '"' + remove_clonal + '"') else ""} \
      ~{if defined(path_to_picard) then ("--path-to-picard " +  '"' + path_to_picard + '"') else ""} \
      ~{if defined(keep_clonal_stats) then ("--keep-clonal-stats " +  '"' + keep_clonal_stats + '"') else ""} \
      ~{if defined(java_options) then ("--java-options " +  '"' + java_options + '"') else ""} \
      ~{if defined(path_to_sam_tools) then ("--path-to-samtools " +  '"' + path_to_sam_tools + '"') else ""} \
      ~{if defined(adapter_seq_read_one) then ("--adapter-seq-read1 " +  '"' + adapter_seq_read_one + '"') else ""} \
      ~{if defined(adapter_seq_read_two) then ("--adapter-seq-read2 " +  '"' + adapter_seq_read_two + '"') else ""} \
      ~{if defined(remove_chr_prefix) then ("--remove-chr-prefix " +  '"' + remove_chr_prefix + '"') else ""} \
      ~{if defined(add_snp_info) then ("--add-snp-info " +  '"' + add_snp_info + '"') else ""} \
      ~{if defined(unmethylated_control) then ("--unmethylated-control " +  '"' + unmethylated_control + '"') else ""} \
      ~{if defined(bin_om_test) then ("--binom-test " +  '"' + bin_om_test + '"') else ""} \
      ~{if defined(sig_cut_off) then ("--sig-cutoff " +  '"' + sig_cut_off + '"') else ""} \
      ~{if defined(min_mapq) then ("--min-mapq " +  '"' + min_mapq + '"') else ""} \
      ~{if defined(min_cov) then ("--min-cov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(max_adapter_removal) then ("--max-adapter-removal " +  '"' + max_adapter_removal + '"') else ""} \
      ~{if defined(overlap_length) then ("--overlap-length " +  '"' + overlap_length + '"') else ""} \
      ~{if defined(zero_cap) then ("--zero-cap " +  '"' + zero_cap + '"') else ""} \
      ~{if defined(error_rate) then ("--error-rate " +  '"' + error_rate + '"') else ""} \
      ~{if defined(min_qual_score) then ("--min-qual-score " +  '"' + min_qual_score + '"') else ""} \
      ~{if defined(min_read_len) then ("--min-read-len " +  '"' + min_read_len + '"') else ""} \
      ~{if defined(min_base_quality) then ("--min-base-quality " +  '"' + min_base_quality + '"') else ""} \
      ~{if defined(keep_temp_files) then ("--keep-temp-files " +  '"' + keep_temp_files + '"') else ""}
  >>>
  parameter_meta {
    read_one_files: "list of all the read 1 fastq files you would like to run through the pipeline. Note that globbing is supported here (i.e., you can use * in your paths) (default: None)"
    read_two_files: "list of all the read 2 fastq files you would like to run through the pipeline. Note that globbing is supported here (i.e., you can use * in your paths) (default: None)"
    sample: "String indicating the name of the sample you are processing. It will be included in the output files. (default: None)"
    forward_ref: "string indicating the path to the forward strand reference created by build_ref (default: None)"
    reverse_ref: "string indicating the path to the reverse strand reference created by build_ref (default: None)"
    ref_fast_a: "string indicating the path to a fasta file containing the sequences you used for mapping (default: None)"
    libraries: "list of library IDs (in the same order as the files list) indiciating which libraries each set of fastq files belong to. If you use a glob, you only need to indicate the library ID for those fastqs once (i.e., the length of files and libraries should be the same) (default: ['libA'])"
    path_to_output: "Path to a directory where you would like the output to be stored. The default is the same directory as the input fastqs. (default: )"
    pb_at: "Boolean indicating whether to process data in PBAT (Post-Bisulfite Adaptor Tagging) mode, in which reads will be mapped to opposite strand of C-T converted genome and the forward strand of G-A converted genome. (default: False)"
    check_dependency: "Boolean indicating whether to check dependency requirements are met. (default: False)"
    num_procs: "Number of processors you wish to use to parallelize this function (default: 1)"
    sort_mem: "Parameter to pass to unix sort with -S/--buffer-size command (default: 500M)"
    num_upstream_bases: "Number of base(s) upstream of each cytosine that you wish to include in output file. Recommend value 1 for NOMe-seq processing since the upstream base is required to tell apart cytosine at GC context. (default: 0)"
    num_downstream_bases: "Number of base(s) downstream of each cytosine that you wish to include in output file. Recommend value to be at least 1 to separate cytosines at different sequence contexts. (default: 2)"
    generate_all_c_file: "Boolean indicating whether to generate the final output file that contains the methylation state of each cytosine. If set to be false, only alignment file (in BAM format) will be generated. (default: True)"
    generate_m_pile_up_file: "Boolean indicating whether to generate intermediate mpileup file to save space. However, skipping mpileup step may cause problem due to the nature of python. Not skipping this step is recommended. (default: True)"
    compress_output: "Boolean indicating whether to compress (by gzip) the final output (allc file(s)). (default: True)"
    b_gzip: "Boolean indicating whether to bgzip compressed allc files and tabix index. (default: False)"
    path_to_b_gzip: "Path to bgzip installation (default: )"
    path_to_tab_ix: "Path to tabix installation (default: )"
    trim_reads: "Boolean indicating whether to trim reads using cutadapt. (default: True)"
    path_to_cut_adapt: "Path to cutadapt installation (default: )"
    path_to_aligner: "Path to bowtie/bowtie2 installation (default: )"
    aligner: "Aligner to use. Currently, methylpy supports bowtie, bowtie2 and minimap2. (default: bowtie2)"
    aligner_options: "list of strings indicating options you would like passed to bowtie (e.g., \"-k 1 -l 2\") (default: None)"
    merge_by_max_mapq: "Boolean indicates whether to merge alignment results from two converted genomes by MAPQ score. Be default, we only keep read pairs that are mapped to only one of the two converted genomes. If this option is set to True, for a read pair that could be mapped to both converted genomes, the alignment that achieves larger MAPQ score will be kept. (default: False)"
    remove_clonal: "Boolean indicates whether to remove clonal reads or not (default: False)"
    path_to_picard: "The path to the picard.jar in picard tools. The jar file can be downloaded from https://broadinstitute.github.io/picard/index.html (default is current dir) (default: )"
    keep_clonal_stats: "Boolean indicates whether to store the metric file from picard. (default: True)"
    java_options: "String indicating the option pass the java when running picard. (default: -Xmx20g)"
    path_to_sam_tools: "Path to samtools installation (default: )"
    adapter_seq_read_one: "sequence of an adapter that was ligated to the 3' end of read 1. The adapter itself and anything that follows is trimmed. (default: AGATCGGAAGAGCACACGTCTGAAC)"
    adapter_seq_read_two: "sequence of an adapter that was ligated to the 3' end of read 2. The adapter itself and anything that follows is trimmed. (default: AGATCGGAAGAGCGTCGTGTAGGGA)"
    remove_chr_prefix: "Boolean indicates whether to remove in the final output the \"chr\" prefix in the chromosome name (default: True)"
    add_snp_info: "Boolean indicates whether to add extra two columns in the output (allc) file regarding the genotype information of each site. The first (second) column contain the number of basecalls that support the reference gentype (variant) for nucleotides in the sequence context. (default: False)"
    unmethylated_control: "name of the chromosome/region that you want to use to estimate the non-conversion rate of your sample, or the non-conversion rate you would like to use. Consequently, control is either a string, or a decimal. If control is a string then it should be in the following format: \"chrom:start-end\". If you would like to specify an entire chromosome simply use \"chrom:\" (default: None)"
    bin_om_test: "Indicates that you would like to perform a binomial test on each cytosine to delineate cytosines that are significantly methylated than noise due to the failure of bisulfite conversion. (default: False)"
    sig_cut_off: "float indicating the adjusted p-value cutoff you wish to use for determining whether or not a site is methylated (default: 0.01)"
    min_mapq: "Minimum MAPQ for reads to be included. (default: 30)"
    min_cov: "Integer indicating the minimum number of reads for a site to be tested. (default: 0)"
    max_adapter_removal: "Indicates the maximum number of times to try to remove adapters. Useful when an adapter gets appended multiple times. (default: None)"
    overlap_length: "Minimum overlap length. If the overlap between the read and the adapter is shorter than LENGTH, the read is not modified. This reduces the no. of bases trimmed purely due to short random adapter matches. (default: None)"
    zero_cap: "Flag that causes negative quality values to be set to zero (workaround to avoid segmentation faults in BWA) (default: None)"
    error_rate: "maximum allowed error rate (no. of errors divided by the length of the matching region) (default: None)"
    min_qual_score: "allows you to trim low-quality ends from reads before adapter removal. The algorithm is the same as the one used by BWA (Subtract CUTOFF from all qualities; compute partial sums from all indices to the end of the sequence; cut sequence at the index at which the sum is minimal). (default: 10)"
    min_read_len: "indicates the minimum length a read must be to be kept. Reads that are too short even before adapter removal are also discarded. In colorspace, an initial primer is not counted. (default: 30)"
    min_base_quality: "Integer indicating the minimum PHRED quality score for a base to be included in the mpileup file (and subsequently to be considered for methylation calling). (default: 1)"
    keep_temp_files: "Boolean indicating that you would like to keep the intermediate files generated by this function. This can be useful for debugging, but in general should be left False. (default: False)"
  }
}
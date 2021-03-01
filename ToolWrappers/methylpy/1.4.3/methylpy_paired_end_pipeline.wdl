version 1.0

task MethylpyPairedendpipeline {
  input {
    Array[Int] read_one_files
    Array[Int] read_two_files
    String? sample
    File? forward_ref
    File? reverse_ref
    File? string_indicating_path
    Array[String] libraries
    File? path_to_output
    Boolean? pb_at
    Boolean? check_dependency
    Int? num_procs
    Int? sort_mem
    Int? num_upstream_bases
    Int? num_downstream_bases
    File? generate_all_c_file
    File? generate_m_pile_up_file
    Boolean? compress_output
    Boolean? b_gzip
    File? path_to_b_gzip
    File? path_to_tab_ix
    Boolean? trim_reads
    File? path_to_cut_adapt
    File? path_to_aligner
    Int? aligner
    Array[String] aligner_options
    Int? merge_by_max_mapq
    Boolean? remove_clonal
    File? path_to_picard
    Boolean? keep_clonal_stats
    String? java_options
    File? path_to_sam_tools
    Int? adapter_seq_read_one
    Int? adapter_seq_read_two
    Boolean? remove_chr_prefix
    Boolean? add_snp_info
    Float? unmethylated_control
    String? bin_om_test
    Float? sig_cut_off
    Int? min_mapq
    Int? min_cov
    Int? max_adapter_removal
    Int? overlap_length
    String? zero_cap
    Int? error_rate
    Int? min_qual_score
    Int? min_read_len
    Int? min_base_quality
    Boolean? keep_temp_files
    String var_48
  }
  command <<<
    methylpy paired_end_pipeline \
      ~{var_48} \
      ~{if defined(read_one_files) then ("--read1-files " +  '"' + read_one_files + '"') else ""} \
      ~{if defined(read_two_files) then ("--read2-files " +  '"' + read_two_files + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(forward_ref) then ("--forward-ref " +  '"' + forward_ref + '"') else ""} \
      ~{if defined(reverse_ref) then ("--reverse-ref " +  '"' + reverse_ref + '"') else ""} \
      ~{if defined(string_indicating_path) then ("--ref-fasta " +  '"' + string_indicating_path + '"') else ""} \
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
  runtime {
    docker: "None"
  }
  parameter_meta {
    read_one_files: "list of all the read 1 fastq files you would like to\\nrun through the pipeline. Note that globbing is\\nsupported here (i.e., you can use * in your paths)\\n(default: None)"
    read_two_files: "list of all the read 2 fastq files you would like to\\nrun through the pipeline. Note that globbing is\\nsupported here (i.e., you can use * in your paths)\\n(default: None)"
    sample: "String indicating the name of the sample you are\\nprocessing. It will be included in the output files.\\n(default: None)"
    forward_ref: "string indicating the path to the forward strand\\nreference created by build_ref (default: None)"
    reverse_ref: "string indicating the path to the reverse strand\\nreference created by build_ref (default: None)"
    string_indicating_path: "string indicating the path to a fasta file containing\\nthe sequences you used for mapping (default: None)"
    libraries: "list of library IDs (in the same order as the files\\nlist) indiciating which libraries each set of fastq\\nfiles belong to. If you use a glob, you only need to\\nindicate the library ID for those fastqs once (i.e.,\\nthe length of files and libraries should be the same)\\n(default: ['libA'])"
    path_to_output: "Path to a directory where you would like the output to\\nbe stored. The default is the same directory as the\\ninput fastqs. (default: )"
    pb_at: "Boolean indicating whether to process data in PBAT\\n(Post-Bisulfite Adaptor Tagging) mode, in which reads\\nwill be mapped to opposite strand of C-T converted\\ngenome and the forward strand of G-A converted genome.\\n(default: False)"
    check_dependency: "Boolean indicating whether to check dependency\\nrequirements are met. (default: False)"
    num_procs: "Number of processors you wish to use to parallelize\\nthis function (default: 1)"
    sort_mem: "Parameter to pass to unix sort with -S/--buffer-size\\ncommand (default: 500M)"
    num_upstream_bases: "Number of base(s) upstream of each cytosine that you\\nwish to include in output file. Recommend value 1 for\\nNOMe-seq processing since the upstream base is\\nrequired to tell apart cytosine at GC context.\\n(default: 0)"
    num_downstream_bases: "Number of base(s) downstream of each cytosine that you\\nwish to include in output file. Recommend value to be\\nat least 1 to separate cytosines at different sequence\\ncontexts. (default: 2)"
    generate_all_c_file: "Boolean indicating whether to generate the final\\noutput file that contains the methylation state of\\neach cytosine. If set to be false, only alignment file\\n(in BAM format) will be generated. (default: True)"
    generate_m_pile_up_file: "Boolean indicating whether to generate intermediate\\nmpileup file to save space. However, skipping mpileup\\nstep may cause problem due to the nature of python.\\nNot skipping this step is recommended. (default: True)"
    compress_output: "Boolean indicating whether to compress (by gzip) the\\nfinal output (allc file(s)). (default: True)"
    b_gzip: "Boolean indicating whether to bgzip compressed allc\\nfiles and tabix index. (default: False)"
    path_to_b_gzip: "Path to bgzip installation (default: )"
    path_to_tab_ix: "Path to tabix installation (default: )"
    trim_reads: "Boolean indicating whether to trim reads using\\ncutadapt. (default: True)"
    path_to_cut_adapt: "Path to cutadapt installation (default: )"
    path_to_aligner: "Path to bowtie/bowtie2 installation (default: )"
    aligner: "Aligner to use. Currently, methylpy supports bowtie,\\nbowtie2 and minimap2. (default: bowtie2)"
    aligner_options: "list of strings indicating options you would like\\npassed to bowtie (e.g., \\\"-k 1 -l 2\\\") (default: None)"
    merge_by_max_mapq: "Boolean indicates whether to merge alignment results\\nfrom two converted genomes by MAPQ score. Be default,\\nwe only keep read pairs that are mapped to only one of\\nthe two converted genomes. If this option is set to\\nTrue, for a read pair that could be mapped to both\\nconverted genomes, the alignment that achieves larger\\nMAPQ score will be kept. (default: False)"
    remove_clonal: "Boolean indicates whether to remove clonal reads or\\nnot (default: False)"
    path_to_picard: "The path to the picard.jar in picard tools. The jar\\nfile can be downloaded from\\nhttps://broadinstitute.github.io/picard/index.html\\n(default is current dir) (default: )"
    keep_clonal_stats: "Boolean indicates whether to store the metric file\\nfrom picard. (default: True)"
    java_options: "String indicating the option pass the java when\\nrunning picard. (default: -Xmx20g)"
    path_to_sam_tools: "Path to samtools installation (default: )"
    adapter_seq_read_one: "sequence of an adapter that was ligated to the 3' end\\nof read 1. The adapter itself and anything that\\nfollows is trimmed. (default:\\nAGATCGGAAGAGCACACGTCTGAAC)"
    adapter_seq_read_two: "sequence of an adapter that was ligated to the 3' end\\nof read 2. The adapter itself and anything that\\nfollows is trimmed. (default:\\nAGATCGGAAGAGCGTCGTGTAGGGA)"
    remove_chr_prefix: "Boolean indicates whether to remove in the final\\noutput the \\\"chr\\\" prefix in the chromosome name\\n(default: True)"
    add_snp_info: "Boolean indicates whether to add extra two columns in\\nthe output (allc) file regarding the genotype\\ninformation of each site. The first (second) column\\ncontain the number of basecalls that support the\\nreference gentype (variant) for nucleotides in the\\nsequence context. (default: False)"
    unmethylated_control: "name of the chromosome/region that you want to use to\\nestimate the non-conversion rate of your sample, or\\nthe non-conversion rate you would like to use.\\nConsequently, control is either a string, or a\\ndecimal. If control is a string then it should be in\\nthe following format: \\\"chrom:start-end\\\". If you would\\nlike to specify an entire chromosome simply use\\n\\\"chrom:\\\" (default: None)"
    bin_om_test: "Indicates that you would like to perform a binomial\\ntest on each cytosine to delineate cytosines that are\\nsignificantly methylated than noise due to the failure\\nof bisulfite conversion. (default: False)"
    sig_cut_off: "float indicating the adjusted p-value cutoff you wish\\nto use for determining whether or not a site is\\nmethylated (default: 0.01)"
    min_mapq: "Minimum MAPQ for reads to be included. (default: 30)"
    min_cov: "Integer indicating the minimum number of reads for a\\nsite to be tested. (default: 0)"
    max_adapter_removal: "Indicates the maximum number of times to try to remove\\nadapters. Useful when an adapter gets appended\\nmultiple times. (default: None)"
    overlap_length: "Minimum overlap length. If the overlap between the\\nread and the adapter is shorter than LENGTH, the read\\nis not modified. This reduces the no. of bases trimmed\\npurely due to short random adapter matches. (default:\\nNone)"
    zero_cap: "Flag that causes negative quality values to be set to\\nzero (workaround to avoid segmentation faults in BWA)\\n(default: None)"
    error_rate: "maximum allowed error rate (no. of errors divided by\\nthe length of the matching region) (default: None)"
    min_qual_score: "allows you to trim low-quality ends from reads before\\nadapter removal. The algorithm is the same as the one\\nused by BWA (Subtract CUTOFF from all qualities;\\ncompute partial sums from all indices to the end of\\nthe sequence; cut sequence at the index at which the\\nsum is minimal). (default: 10)"
    min_read_len: "indicates the minimum length a read must be to be\\nkept. Reads that are too short even before adapter\\nremoval are also discarded. In colorspace, an initial\\nprimer is not counted. (default: 30)"
    min_base_quality: "Integer indicating the minimum PHRED quality score for\\na base to be included in the mpileup file (and\\nsubsequently to be considered for methylation\\ncalling). (default: 1)"
    keep_temp_files: "Boolean indicating that you would like to keep the\\nintermediate files generated by this function. This\\ncan be useful for debugging, but in general should be\\nleft False. (default: False)\\n"
    var_48: "[--libraries LIBRARIES [LIBRARIES ...]]"
  }
  output {
    File out_stdout = stdout()
    File out_path_to_output = "${in_path_to_output}"
  }
}
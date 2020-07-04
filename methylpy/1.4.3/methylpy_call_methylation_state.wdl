version 1.0

task MethylpyCallMethylationState {
  input {
    String? input_file
    String? sample
    String? ref_fast_a
    String? paired_end
    File? path_to_output
    String? num_procs
    String? num_upstream_bases
    String? num_downstream_bases
    String? generate_all_c_file
    String? generate_m_pile_up_file
    String? compress_output
    String? b_gzip
    File? path_to_b_gzip
    File? path_to_tab_ix
    File? path_to_sam_tools
    String? remove_chr_prefix
    String? add_snp_info
    String? unmethylated_control
    String? bin_om_test
    String? sig_cut_off
    Int? min_mapq
    Int? min_cov
    Int? min_base_quality
    String? keep_temp_files
  }
  command <<<
    methylpy call-methylation-state \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(ref_fast_a) then ("--ref-fasta " +  '"' + ref_fast_a + '"') else ""} \
      ~{if defined(paired_end) then ("--paired-end " +  '"' + paired_end + '"') else ""} \
      ~{if defined(path_to_output) then ("--path-to-output " +  '"' + path_to_output + '"') else ""} \
      ~{if defined(num_procs) then ("--num-procs " +  '"' + num_procs + '"') else ""} \
      ~{if defined(num_upstream_bases) then ("--num-upstream-bases " +  '"' + num_upstream_bases + '"') else ""} \
      ~{if defined(num_downstream_bases) then ("--num-downstream-bases " +  '"' + num_downstream_bases + '"') else ""} \
      ~{if defined(generate_all_c_file) then ("--generate-allc-file " +  '"' + generate_all_c_file + '"') else ""} \
      ~{if defined(generate_m_pile_up_file) then ("--generate-mpileup-file " +  '"' + generate_m_pile_up_file + '"') else ""} \
      ~{if defined(compress_output) then ("--compress-output " +  '"' + compress_output + '"') else ""} \
      ~{if defined(b_gzip) then ("--bgzip " +  '"' + b_gzip + '"') else ""} \
      ~{if defined(path_to_b_gzip) then ("--path-to-bgzip " +  '"' + path_to_b_gzip + '"') else ""} \
      ~{if defined(path_to_tab_ix) then ("--path-to-tabix " +  '"' + path_to_tab_ix + '"') else ""} \
      ~{if defined(path_to_sam_tools) then ("--path-to-samtools " +  '"' + path_to_sam_tools + '"') else ""} \
      ~{if defined(remove_chr_prefix) then ("--remove-chr-prefix " +  '"' + remove_chr_prefix + '"') else ""} \
      ~{if defined(add_snp_info) then ("--add-snp-info " +  '"' + add_snp_info + '"') else ""} \
      ~{if defined(unmethylated_control) then ("--unmethylated-control " +  '"' + unmethylated_control + '"') else ""} \
      ~{if defined(bin_om_test) then ("--binom-test " +  '"' + bin_om_test + '"') else ""} \
      ~{if defined(sig_cut_off) then ("--sig-cutoff " +  '"' + sig_cut_off + '"') else ""} \
      ~{if defined(min_mapq) then ("--min-mapq " +  '"' + min_mapq + '"') else ""} \
      ~{if defined(min_cov) then ("--min-cov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(min_base_quality) then ("--min-base-quality " +  '"' + min_base_quality + '"') else ""} \
      ~{if defined(keep_temp_files) then ("--keep-temp-files " +  '"' + keep_temp_files + '"') else ""}
  >>>
  parameter_meta {
    input_file: "bam file that contains mapped bisulfite sequencing reads. (default: None)"
    sample: "String indicating the name of the sample you are processing. It will be included in the output files. (default: None)"
    ref_fast_a: "string indicating the path to a fasta file containing the sequences you used for mapping (default: None)"
    paired_end: "Boolean indicating whether the input BAM file is from paired-end data. (default: False)"
    path_to_output: "Path to a directory where you would like the output to be stored. The default is the same directory as the input fastqs. (default: )"
    num_procs: "Number of processors you wish to use to parallelize this function (default: 1)"
    num_upstream_bases: "Number of base(s) upstream of each cytosine that you wish to include in output file. Recommend value 1 for NOMe-seq processing since the upstream base is required to tell apart cytosine at GC context. (default: 0)"
    num_downstream_bases: "Number of base(s) downstream of each cytosine that you wish to include in output file. Recommend value to be at least 1 to separate cytosines at different sequence contexts. (default: 2)"
    generate_all_c_file: "Boolean indicating whether to generate the final output file that contains the methylation state of each cytosine. If set to be false, only alignment file (in BAM format) will be generated. (default: True)"
    generate_m_pile_up_file: "Boolean indicating whether to generate intermediate mpileup file to save space. However, skipping mpileup step may cause problem due to the nature of python. Not skipping this step is recommended. (default: True)"
    compress_output: "Boolean indicating whether to compress (by gzip) the final output (allc file(s)). (default: True)"
    b_gzip: "Boolean indicating whether to bgzip compressed allc files and tabix index. (default: False)"
    path_to_b_gzip: "Path to bgzip installation (default: )"
    path_to_tab_ix: "Path to tabix installation (default: )"
    path_to_sam_tools: "Path to samtools installation (default: )"
    remove_chr_prefix: "Boolean indicates whether to remove in the final output the \"chr\" prefix in the chromosome name (default: True)"
    add_snp_info: "Boolean indicates whether to add extra two columns in the output (allc) file regarding the genotype information of each site. The first (second) column contain the number of basecalls that support the reference gentype (variant) for nucleotides in the sequence context. (default: False)"
    unmethylated_control: "name of the chromosome/region that you want to use to estimate the non-conversion rate of your sample, or the non-conversion rate you would like to use. Consequently, control is either a string, or a decimal. If control is a string then it should be in the following format: \"chrom:start-end\". If you would like to specify an entire chromosome simply use \"chrom:\" (default: None)"
    bin_om_test: "Indicates that you would like to perform a binomial test on each cytosine to delineate cytosines that are significantly methylated than noise due to the failure of bisulfite conversion. (default: False)"
    sig_cut_off: "float indicating the adjusted p-value cutoff you wish to use for determining whether or not a site is methylated (default: 0.01)"
    min_mapq: "Minimum MAPQ for reads to be included. (default: 30)"
    min_cov: "Integer indicating the minimum number of reads for a site to be tested. (default: 0)"
    min_base_quality: "Integer indicating the minimum PHRED quality score for a base to be included in the mpileup file (and subsequently to be considered for methylation calling). (default: 1)"
    keep_temp_files: "Boolean indicating that you would like to keep the intermediate files generated by this function. This can be useful for debugging, but in general should be left False. (default: False)"
  }
}
version 1.0

task AquilaStep1Multilibs {
  input {
    String? bam_file_list
    String? vcf_file_list
    String? chr_start
    String? chr_end
    String? sample_name_list
    String? out_dir
    String? uniq_map_dir
    String? num_threads
    String? num_threads_for_sam_tools_sort
    String? block_threshold
    String? block_len_use
    String use
  }
  command <<<
    Aquila_step1_multilibs \
      ~{use} \
      ~{if defined(bam_file_list) then ("--bam_file_list " +  '"' + bam_file_list + '"') else ""} \
      ~{if defined(vcf_file_list) then ("--vcf_file_list " +  '"' + vcf_file_list + '"') else ""} \
      ~{if defined(chr_start) then ("--chr_start " +  '"' + chr_start + '"') else ""} \
      ~{if defined(chr_end) then ("--chr_end " +  '"' + chr_end + '"') else ""} \
      ~{if defined(sample_name_list) then ("--sample_name_list " +  '"' + sample_name_list + '"') else ""} \
      ~{if defined(out_dir) then ("--out_dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(uniq_map_dir) then ("--uniq_map_dir " +  '"' + uniq_map_dir + '"') else ""} \
      ~{if defined(num_threads) then ("--num_threads " +  '"' + num_threads + '"') else ""} \
      ~{if defined(num_threads_for_sam_tools_sort) then ("--num_threads_for_samtools_sort " +  '"' + num_threads_for_sam_tools_sort + '"') else ""} \
      ~{if defined(block_threshold) then ("--block_threshold " +  '"' + block_threshold + '"') else ""} \
      ~{if defined(block_len_use) then ("--block_len_use " +  '"' + block_len_use + '"') else ""}
  >>>
  parameter_meta {
    bam_file_list: "Required parameter, BAM file list, each BAM file is seperately by comma \",\". For example: 1.bam,2.bam"
    vcf_file_list: "Required parameter, VCF file list, each VCF file is seperately by comma \",\" . For example: 1.vcf,2.vcf"
    chr_start: "chromosome start from, default = 1"
    chr_end: "chromosome end by, default = 23"
    sample_name_list: "Required parameter, sample name list, each sample name is seperately by comma \",\". For example: S24385_lysis_2,S24385_lysis_2H"
    out_dir: "Directory to store Aquila assembly results, default = ./Assembly_results"
    uniq_map_dir: "Required parameter, Directory for 100-mer uniqness, you can run ./install.sh to download \"Uniqness_map\" for GRCh38"
    num_threads: "number of threads, default = 8 (recommended)"
    num_threads_for_sam_tools_sort: "number of threads for samtools sort, default = 20"
    block_threshold: "phase block threshold, default = 200000(200kb)"
    block_len_use: "phase block len threshold, default = 100000(100kb)"
    use: ""
  }
}
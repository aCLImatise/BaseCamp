version 1.0

task AquilaStep1Hybrid {
  input {
    File? bam_file_list
    File? vcf_file_list
    String? chr_start
    String? chr_end
    Int? sample_name_list
    Directory? out_dir
    Directory? uniq_map_dir
    Int? num_threads
    Int? num_threads_for_sam_tools_sort
    Int? block_threshold
    Int? block_len_use
    Int x_zhou_one_five_atcs_dot_stanford_dot_edu
  }
  command <<<
    Aquila_step1_hybrid \
      ~{x_zhou_one_five_atcs_dot_stanford_dot_edu} \
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
  runtime {
    docker: "None"
  }
  parameter_meta {
    bam_file_list: "Required parameter, BAM file list, each BAM file is\\nseperately by comma \\\",\\\". For example: 1.bam,2.bam"
    vcf_file_list: "Required parameter, VCF file list, each VCF file is\\nseperately by comma \\\",\\\" . For example: 1.vcf,2.vcf"
    chr_start: "chromosome start from"
    chr_end: "chromosome end by"
    sample_name_list: "Required parameter, sample name list, each sample name\\nis seperately by comma \\\",\\\". For example:\\nS24385_lysis_2,S24385_lysis_2H"
    out_dir: "Directory to store output"
    uniq_map_dir: "Required parameter,Directory to 100-mer uniqness"
    num_threads: "number of threads"
    num_threads_for_sam_tools_sort: "number of threads for samtools sort"
    block_threshold: "phase block threshold, default = 200000(200kb)"
    block_len_use: "phase block len threshold, default = 100000(100kb)\\n"
    x_zhou_one_five_atcs_dot_stanford_dot_edu: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
    Directory out_out_dir = "${in_out_dir}"
  }
}
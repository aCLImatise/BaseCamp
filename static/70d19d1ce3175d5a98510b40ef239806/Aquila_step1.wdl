version 1.0

task AquilaStep1 {
  input {
    File? bam_file
    File? vcf_file
    Int? chr_start
    Int? chr_end
    Int? sample_name
    Directory? out_dir
    Directory? uniq_map_dir
    Int? num_threads
    Int? num_threads_for_sam_tools_sort
    Int? num_threads_for_extract_reads
    Int? block_threshold
    Int? block_len_use
    Int? mbq_threshold
    Int? boundary
    Int x_zhou_one_five_atcs_dot_stanford_dot_edu
  }
  command <<<
    Aquila_step1 \
      ~{x_zhou_one_five_atcs_dot_stanford_dot_edu} \
      ~{if defined(bam_file) then ("--bam_file " +  '"' + bam_file + '"') else ""} \
      ~{if defined(vcf_file) then ("--vcf_file " +  '"' + vcf_file + '"') else ""} \
      ~{if defined(chr_start) then ("--chr_start " +  '"' + chr_start + '"') else ""} \
      ~{if defined(chr_end) then ("--chr_end " +  '"' + chr_end + '"') else ""} \
      ~{if defined(sample_name) then ("--sample_name " +  '"' + sample_name + '"') else ""} \
      ~{if defined(out_dir) then ("--out_dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(uniq_map_dir) then ("--uniq_map_dir " +  '"' + uniq_map_dir + '"') else ""} \
      ~{if defined(num_threads) then ("--num_threads " +  '"' + num_threads + '"') else ""} \
      ~{if defined(num_threads_for_sam_tools_sort) then ("--num_threads_for_samtools_sort " +  '"' + num_threads_for_sam_tools_sort + '"') else ""} \
      ~{if defined(num_threads_for_extract_reads) then ("--num_threads_for_extract_reads " +  '"' + num_threads_for_extract_reads + '"') else ""} \
      ~{if defined(block_threshold) then ("--block_threshold " +  '"' + block_threshold + '"') else ""} \
      ~{if defined(block_len_use) then ("--block_len_use " +  '"' + block_len_use + '"') else ""} \
      ~{if defined(mbq_threshold) then ("--mbq_threshold " +  '"' + mbq_threshold + '"') else ""} \
      ~{if defined(boundary) then ("--boundary " +  '"' + boundary + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bam_file: "Required parameter; BAM file, called by longranger\\nalign"
    vcf_file: "Required parameter; VCF file, called by FreeBayes"
    chr_start: "chromosome start from, default = 1"
    chr_end: "chromosome end by,default = 23"
    sample_name: "Required parameter; Sample Name you can define by\\nyourself, for example: S12878"
    out_dir: "Directory to store assembly results, default =\\n./Assembly_results"
    uniq_map_dir: "Required Parameter; Directory for 100-mer uniqness,\\nrun ./install to download \\\"Uniquess_map\\\" for hg38"
    num_threads: "number of threads, default = 8 (recommended)"
    num_threads_for_sam_tools_sort: "number of threads for samtools sort, default = 20"
    num_threads_for_extract_reads: "number of threads for extracting raw reads, default =\\n8 (recommended)"
    block_threshold: "phase block threshold, default = 200000"
    block_len_use: "phase block len threshold, default = 100000"
    mbq_threshold: "phred-scaled quality score for the assertion made in\\nALT, default = 13"
    boundary: "boundary for long fragments with the same barcode,\\ndefault = 50000 (recommended)\\n"
    x_zhou_one_five_atcs_dot_stanford_dot_edu: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}
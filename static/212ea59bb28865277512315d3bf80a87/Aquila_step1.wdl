version 1.0

task AquilaStep1 {
  input {
    String? bam_file
    String? vcf_file
    String? chr_start
    String? chr_end
    String? sample_name
    String? out_dir
    String? uniq_map_dir
    String? num_threads
    String? num_threads_for_sam_tools_sort
    String? num_threads_for_extract_reads
    String? block_threshold
    String? block_len_use
    String? mbq_threshold
    String? boundary
    String use
  }
  command <<<
    Aquila_step1 \
      ~{use} \
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
  parameter_meta {
    bam_file: "Required parameter; BAM file, called by longranger align"
    vcf_file: "Required parameter; VCF file, called by FreeBayes"
    chr_start: "chromosome start from, default = 1"
    chr_end: "chromosome end by,default = 23"
    sample_name: "Required parameter; Sample Name you can define by yourself, for example: S12878"
    out_dir: "Directory to store assembly results, default = ./Assembly_results"
    uniq_map_dir: "Required Parameter; Directory for 100-mer uniqness, run ./install to download \"Uniquess_map\" for hg38"
    num_threads: "number of threads, default = 8 (recommended)"
    num_threads_for_sam_tools_sort: "number of threads for samtools sort, default = 20"
    num_threads_for_extract_reads: "number of threads for extracting raw reads, default = 8 (recommended)"
    block_threshold: "phase block threshold, default = 200000"
    block_len_use: "phase block len threshold, default = 100000"
    mbq_threshold: "phred-scaled quality score for the assertion made in ALT, default = 13"
    boundary: "boundary for long fragments with the same barcode, default = 50000 (recommended)"
    use: ""
  }
}
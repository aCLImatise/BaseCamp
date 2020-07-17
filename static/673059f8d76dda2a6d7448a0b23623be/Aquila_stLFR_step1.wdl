version 1.0

task AquilaStLFRStep1 {
  input {
    String? fast_q_file
    String? bam_file
    String? vcf_file
    String? chr_start
    String? chr_end
    String? sample_name
    String? out_dir
    String? uniq_map_dir
    String? num_threads
    String? block_threshold
    String? block_len_use
    String use
  }
  command <<<
    Aquila_stLFR_step1 \
      ~{use} \
      ~{if defined(fast_q_file) then ("--fastq_file " +  '"' + fast_q_file + '"') else ""} \
      ~{if defined(bam_file) then ("--bam_file " +  '"' + bam_file + '"') else ""} \
      ~{if defined(vcf_file) then ("--vcf_file " +  '"' + vcf_file + '"') else ""} \
      ~{if defined(chr_start) then ("--chr_start " +  '"' + chr_start + '"') else ""} \
      ~{if defined(chr_end) then ("--chr_end " +  '"' + chr_end + '"') else ""} \
      ~{if defined(sample_name) then ("--sample_name " +  '"' + sample_name + '"') else ""} \
      ~{if defined(out_dir) then ("--out_dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(uniq_map_dir) then ("--uniq_map_dir " +  '"' + uniq_map_dir + '"') else ""} \
      ~{if defined(num_threads) then ("--num_threads " +  '"' + num_threads + '"') else ""} \
      ~{if defined(block_threshold) then ("--block_threshold " +  '"' + block_threshold + '"') else ""} \
      ~{if defined(block_len_use) then ("--block_len_use " +  '"' + block_len_use + '"') else ""}
  >>>
  parameter_meta {
    fast_q_file: "Required parameter; stLFR FASTQ file with paired reads"
    bam_file: "Required parameter; BAM file, called by bwa mem"
    vcf_file: "Required parameter; VCF file, called by FreeBayes"
    chr_start: "chromosome start from, default = 1"
    chr_end: "chromosome end by,default = 23"
    sample_name: "Required parameter; sample name you can define, for example, S12878"
    out_dir: "Directory to store assembly results, default = ./Assembly_results"
    uniq_map_dir: "Required Parameter; Directory for 100-mer uniqness, run ./install to download it"
    num_threads: "number of threads, default = 8 (recommended)"
    block_threshold: "phase block threshold, default = 200000"
    block_len_use: "phase block len threshold, default = 100000"
    use: ""
  }
}
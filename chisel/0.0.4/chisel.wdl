version 1.0

task Chisel {
  input {
    Directory? run_dir
    File? tumor
    File? normal
    String? reference
    File? list_phased
    Int? size
    Int? block_size
    Int? chromosomes
    Int? min_reads
    Int? max_ploidy
    Int? upper_k
    File? bcf_tools
    File? sam_tools
    String? seed
    Int? jobs
  }
  command <<<
    chisel \
      ~{if defined(run_dir) then ("--rundir " +  '"' + run_dir + '"') else ""} \
      ~{if defined(tumor) then ("--tumor " +  '"' + tumor + '"') else ""} \
      ~{if defined(normal) then ("--normal " +  '"' + normal + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(list_phased) then ("--listphased " +  '"' + list_phased + '"') else ""} \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""} \
      ~{if defined(block_size) then ("--blocksize " +  '"' + block_size + '"') else ""} \
      ~{if defined(chromosomes) then ("--chromosomes " +  '"' + chromosomes + '"') else ""} \
      ~{if defined(min_reads) then ("--minreads " +  '"' + min_reads + '"') else ""} \
      ~{if defined(max_ploidy) then ("--maxploidy " +  '"' + max_ploidy + '"') else ""} \
      ~{if defined(upper_k) then ("--upperk " +  '"' + upper_k + '"') else ""} \
      ~{if defined(bcf_tools) then ("--bcftools " +  '"' + bcf_tools + '"') else ""} \
      ~{if defined(sam_tools) then ("--samtools " +  '"' + sam_tools + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(jobs) then ("--jobs " +  '"' + jobs + '"') else ""}
  >>>
  parameter_meta {
    run_dir: "Running directory (default: current directory)"
    tumor: "Barcoded single-cell BAM file"
    normal: "Matched-normal BAM file"
    reference: "Reference genome"
    list_phased: "Phased SNPs file (lines of heterozygous germline SNPs\\nmust contain either 0|1 or 1|0)"
    size: "Bin size, with or without \\\"kb\\\" or \\\"Mb\\\""
    block_size: "Size of the haplotype blocks (default: 50kb, use 0 to\\ndisable)"
    chromosomes: "Space-separeted list of chromosomes between apices\\n(default: \\\"chr1 chr2 chr3 chr4 chr5 chr6 chr7 chr8\\nchr9 chr10 chr11 chr12 chr13 chr14 chr15 chr16 chr17\\nchr18 chr19 chr20 chr21 chr22\\\")"
    min_reads: "Minimum number total reads to select cells (default:\\n100000)"
    max_ploidy: "Maximum total copy number to consider for balanced\\ncluster (default: 4, corresponding to a WGD)"
    upper_k: "Maximum number of bin clusters (default: 100, use 0 to\\nconsider maximum number of clusters)"
    bcf_tools: "Path to the directory to \\\"bcftools\\\" executable,\\nrequired in default mode (default: bcftools is\\ndirectly called as it is in user $PATH)"
    sam_tools: "Path to the directory to \\\"samtools\\\" executable,\\nrequired in default mode (default: samtools is\\ndirectly called as it is in user $PATH)"
    seed: "Random seed for replication (default: None)"
    jobs: "Number of parallele jobs to use (default: equal to\\nnumber of available processors)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}
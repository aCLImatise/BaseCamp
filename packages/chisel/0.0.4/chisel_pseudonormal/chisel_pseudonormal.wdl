version 1.0

task ChiselPseudonormal {
  input {
    String? reference
    Directory? run_dir
    Float? threshold
    Int? size
    Int? chromosomes
    Int? min_reads
    File? sam_tools
    Int? jobs
    Directory? tmpdir
    File? normal
  }
  command <<<
    chisel_pseudonormal \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(run_dir) then ("--rundir " +  '"' + run_dir + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""} \
      ~{if defined(chromosomes) then ("--chromosomes " +  '"' + chromosomes + '"') else ""} \
      ~{if defined(min_reads) then ("--minreads " +  '"' + min_reads + '"') else ""} \
      ~{if defined(sam_tools) then ("--samtools " +  '"' + sam_tools + '"') else ""} \
      ~{if defined(jobs) then ("--jobs " +  '"' + jobs + '"') else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(normal) then ("--normal " +  '"' + normal + '"') else ""}
  >>>
  parameter_meta {
    reference: "Reference genome"
    run_dir: "Running directory (default: current directory)"
    threshold: "Minimum fraction of diploid genome to select diploid\\ncells (default: 0.9)"
    size: "Bin size, with or without \\\"kb\\\" or \\\"Mb\\\""
    chromosomes: "Space-separeted list of chromosomes between apices\\n(default: \\\"chr1 chr2 chr3 chr4 chr5 chr6 chr7 chr8\\nchr9 chr10 chr11 chr12 chr13 chr14 chr15 chr16 chr17\\nchr18 chr19 chr20 chr21 chr22\\\")"
    min_reads: "Minimum number total reads to select cells (default:\\n100000)"
    sam_tools: "Path to the directory to \\\"samtools\\\" executable,\\nrequired in default mode (default: samtools is\\ndirectly called as it is in user $PATH)"
    jobs: "Number of parallele jobs to use (default: equal to\\nnumber of available processors)"
    tmpdir: "Temporary directory in running directory (default:\\n_TMP)"
    normal: "Name of the generated pseudo matched-normal BAM file\\n(default: pseudonormal.bam)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}
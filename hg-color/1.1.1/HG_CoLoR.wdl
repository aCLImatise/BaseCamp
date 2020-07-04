version 1.0

task HGCoLoR {
  input {
    Int? min_order
    Int? solid
    Int? seeds_overlap
    Int? seeds_distance
    Int? branches
    Int? seed_skips
    Int? mismatches
    Int? best_n
    Int? nproc
    String? tmpdir
    Int? kmc_mem
  }
  command <<<
    HG-CoLoR \
      ~{if defined(min_order) then ("--minorder " +  '"' + min_order + '"') else ""} \
      ~{if defined(solid) then ("--solid " +  '"' + solid + '"') else ""} \
      ~{if defined(seeds_overlap) then ("--seedsoverlap " +  '"' + seeds_overlap + '"') else ""} \
      ~{if defined(seeds_distance) then ("--seedsdistance " +  '"' + seeds_distance + '"') else ""} \
      ~{if defined(branches) then ("--branches " +  '"' + branches + '"') else ""} \
      ~{if defined(seed_skips) then ("--seedskips " +  '"' + seed_skips + '"') else ""} \
      ~{if defined(mismatches) then ("--mismatches " +  '"' + mismatches + '"') else ""} \
      ~{if defined(best_n) then ("--bestn " +  '"' + best_n + '"') else ""} \
      ~{if defined(nproc) then ("--nproc " +  '"' + nproc + '"') else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(kmc_mem) then ("--kmcmem " +  '"' + kmc_mem + '"') else ""}
  >>>
  parameter_meta {
    min_order: ":        Minimum k-mer size of the variable-order de Bruijn graph (default: K/2)."
    solid: ":           Minimum number of occurrences to consider a short read k-mer as solid, after correction (default: 1). This parameter should be carefully raised accordingly to the short reads coverage and accuracy, and to the chosen maximum order of the graph. It should only be increased when using high coverage of short reads, or a small maximum order."
    seeds_overlap: ":    Minimum overlap length to allow the merging of two overlapping seeds (default: K - 1)."
    seeds_distance: ":   Maximum distance to consider two consecutive seeds for merging (default: 10)."
    branches: ":        Maximum number of branches exploration (default: 1,250). Raising this parameter will result in less split corrected long reads. However, it will also increase the runtime, and may create chimeric linkings between the seeds."
    seed_skips: ":       Maximum number of seed skips (default: 3)."
    mismatches: ":      Allowed mismatches when attempting to link two seeds together (default: 3)."
    best_n: ":           Top alignments to be reported by BLASR (default: 50). This parameter should be raised accordingly to the short reads coverage. Its default value is adapted for a 50x coverage of short reads. It should be decreased with higher coverage, and increased with lower coverage."
    nproc: ":           Number of processes to run in parallel (default: number of cores)."
    tmpdir: ":    Path where to store the directory containing temporary files (default: working directory)."
    kmc_mem: ":          Maximum amount of RAM for KMC, in GB (default: 12)."
  }
}
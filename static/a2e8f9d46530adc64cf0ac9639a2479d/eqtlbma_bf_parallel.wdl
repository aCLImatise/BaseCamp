version 1.0

task EqtlbmaBfParallel.bash {
  input {
    String? verbose
    Boolean? p_two_b
    Boolean? gened
    Boolean? snp_d
    Boolean? in_ssd
    Boolean? seed_f
    Boolean? task_identifier_only
    Boolean? pbf
    Boolean? max_bf
    Boolean? thread
    Boolean? sb_grp
  }
  command <<<
    eqtlbma_bf_parallel.bash \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{true="--p2b" false="" p_two_b} \
      ~{true="--geneD" false="" gened} \
      ~{true="--snpD" false="" snp_d} \
      ~{true="--inssD" false="" in_ssd} \
      ~{true="--seedF" false="" seed_f} \
      ~{true="--task" false="" task_identifier_only} \
      ~{true="--pbf" false="" pbf} \
      ~{true="--maxbf" false="" max_bf} \
      ~{true="--thread" false="" thread} \
      ~{true="--sbgrp" false="" sb_grp}
  >>>
  parameter_meta {
    verbose: "level (0/default=1/2/3)"
    p_two_b: "path to the binary 'eqtlbma_bf'"
    gened: "directory with lists of features to analyze (BED files) file names have to be like '<anything>_<batchId>.<anything>'"
    snp_d: "directory with lists of SNPs to analyze (optional) file names have to be like '<anything>_<batchId>.<anything>' each SNP file should correspond to a feature file, in the same order"
    in_ssd: "directory with lists of files with absolute paths to files with summary statistics file names have to be like '<anything>_<batchId>.<abything>' if --inssD is given, neither --geneD nor --snpD are used (nor --geno, --scoord, --exp, etc)"
    seed_f: "file with seeds (as many as files in --geneD) optional, default=list_seeds.txt.gz (should be gzipped)"
    task_identifier_only: "task identifier (not for SGE, for SLURM only)"
    pbf: "which BF to use as the test statistic for the joint-analysis permutations default=none"
    max_bf: "use the maximum ABF over SNPs as test statistic for permutations"
    thread: "number of threads for the permutations default=1"
    sb_grp: "identifier of the subgroup to analyze"
  }
}
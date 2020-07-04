version 1.0

task Sv2train {
  input {
    Boolean? bam
    Boolean? vcf
    Boolean? bed
    Boolean? snv
    Boolean? ped
    Boolean? ini
    Boolean? genome
    Boolean? pcr_free
    Boolean? bwa_mem_m
    Boolean? pre
    Boolean? feats
    Boolean? log
    Boolean? tmp_dir
    Boolean? seed
    Boolean? out
    Boolean? o_dir
  }
  command <<<
    sv2train \
      ~{true="-bam" false="" bam} \
      ~{true="-vcf" false="" vcf} \
      ~{true="-bed" false="" bed} \
      ~{true="-snv" false="" snv} \
      ~{true="-ped" false="" ped} \
      ~{true="-ini" false="" ini} \
      ~{true="-genome" false="" genome} \
      ~{true="-pcrfree" false="" pcr_free} \
      ~{true="-M" false="" bwa_mem_m} \
      ~{true="-pre" false="" pre} \
      ~{true="-feats" false="" feats} \
      ~{true="-log" false="" log} \
      ~{true="-tmp-dir" false="" tmp_dir} \
      ~{true="-seed" false="" seed} \
      ~{true="-out" false="" out} \
      ~{true="-odir" false="" o_dir}
  >>>
  parameter_meta {
    bam: "...     bam file(s)"
    vcf: "...     vcf files(s) of SVs"
    bed: "...     bed files(s) of SVs"
    snv: "...     snv vcf files(s), must be bgzipped and tabixed"
    ped: "...     ped files(s)"
    ini: "...     path to configuration INI file, default lives in sv2 package"
    genome: "reference genome build <hg19, hg38, mm10> [default: hg19]"
    pcr_free: "GC content normalization for pcr free sequences"
    bwa_mem_m: "bwa mem -M compatibility, split-reads flagged as secondary instead of supplementary"
    pre: "preprocessing output directory, skips preprocessing"
    feats: "feature extraction output directory, skips feature extraction"
    log: "log file for standard error messages [default: STDOUT]"
    tmp_dir: "directory for temporary files [default: working directory]"
    seed: "random seed for preprocessing shuffling [default: 42]"
    out: "output prefix [default: sv2_training_features]"
    o_dir: "output path, location for sv2 output directories [default: working directory]"
  }
}
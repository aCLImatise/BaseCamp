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
    Directory? pre
    Directory? feats
    Boolean? log
    Boolean? tmp_dir
    Boolean? seed
    Boolean? out
    File? o_dir
  }
  command <<<
    sv2train \
      ~{if (bam) then "-bam" else ""} \
      ~{if (vcf) then "-vcf" else ""} \
      ~{if (bed) then "-bed" else ""} \
      ~{if (snv) then "-snv" else ""} \
      ~{if (ped) then "-ped" else ""} \
      ~{if (ini) then "-ini" else ""} \
      ~{if (genome) then "-genome" else ""} \
      ~{if (pcr_free) then "-pcrfree" else ""} \
      ~{if (bwa_mem_m) then "-M" else ""} \
      ~{if (pre) then "-pre" else ""} \
      ~{if (feats) then "-feats" else ""} \
      ~{if (log) then "-log" else ""} \
      ~{if (tmp_dir) then "-tmp-dir" else ""} \
      ~{if (seed) then "-seed" else ""} \
      ~{if (out) then "-out" else ""} \
      ~{if (o_dir) then "-odir" else ""}
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
  output {
    File out_stdout = stdout()
    Directory out_pre = "${in_pre}"
    Directory out_feats = "${in_feats}"
    File out_o_dir = "${in_o_dir}"
  }
}
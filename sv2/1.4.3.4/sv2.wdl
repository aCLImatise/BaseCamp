version 1.0

task Sv2 {
  input {
    Boolean? bam
    Boolean? vcf
    Boolean? bed
    Boolean? snv
    Boolean? ped
    Boolean? genome
    Boolean? pcr_free
    Boolean? bwa_mem_m
    Boolean? merge
    Boolean? min_ovr
    Boolean? no_an_no
    Directory? pre
    Directory? feats
    Boolean? load_clf
    Boolean? clf
    Boolean? download
    Boolean? h_gone_nine
    Boolean? hg_three_eight
    Boolean? mm_one_zero
    Boolean? ini
    Boolean? log
    Boolean? tmp_dir
    Boolean? seed
    Boolean? out
    File? o_dir
  }
  command <<<
    sv2 \
      ~{if (bam) then "-bam" else ""} \
      ~{if (vcf) then "-vcf" else ""} \
      ~{if (bed) then "-bed" else ""} \
      ~{if (snv) then "-snv" else ""} \
      ~{if (ped) then "-ped" else ""} \
      ~{if (genome) then "-genome" else ""} \
      ~{if (pcr_free) then "-pcrfree" else ""} \
      ~{if (bwa_mem_m) then "-M" else ""} \
      ~{if (merge) then "-merge" else ""} \
      ~{if (min_ovr) then "-min-ovr" else ""} \
      ~{if (no_an_no) then "-no-anno" else ""} \
      ~{if (pre) then "-pre" else ""} \
      ~{if (feats) then "-feats" else ""} \
      ~{if (load_clf) then "-load-clf" else ""} \
      ~{if (clf) then "-clf" else ""} \
      ~{if (download) then "-download" else ""} \
      ~{if (h_gone_nine) then "-hg19" else ""} \
      ~{if (hg_three_eight) then "-hg38" else ""} \
      ~{if (mm_one_zero) then "-mm10" else ""} \
      ~{if (ini) then "-ini" else ""} \
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
    genome: "reference genome build <hg19, hg38, mm10> [default: hg19]"
    pcr_free: "GC content normalization for pcr free sequences"
    bwa_mem_m: "bwa mem -M compatibility, split-reads flagged as secondary instead of supplementary"
    merge: "merge overlapping SV breakpoints after genotyping"
    min_ovr: "minimum reciprocal overlap for merging [default: 0.8]"
    no_an_no: "genotype without annotating variants"
    pre: "preprocessing output directory, skips preprocessing"
    feats: "feature extraction output directory, skips feature extraction"
    load_clf: "add custom classifiers (-load-clf <clf.json>)"
    clf: "define classifier for genotyping [default:default]"
    download: "download required data files"
    h_gone_nine: "hg19 fasta file"
    hg_three_eight: "hg38 fasta file"
    mm_one_zero: "mm10 fasta file"
    ini: "configuration INI file [default: $SV2_INSTALL_PATH/config/sv2.ini]"
    log: "log file for standard error messages [default: STDOUT]"
    tmp_dir: "directory for temporary files [default: working directory]"
    seed: "random seed for preprocessing shuffling [default: 42]"
    out: "output prefix [default: sv2_genotypes]"
    o_dir: "output path, location for sv2 output directories [default: working directory]"
  }
  output {
    File out_stdout = stdout()
    Directory out_pre = "${in_pre}"
    Directory out_feats = "${in_feats}"
    File out_o_dir = "${in_o_dir}"
  }
}
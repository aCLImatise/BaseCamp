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
    Boolean? pre
    Boolean? feats
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
    Boolean? o_dir
  }
  command <<<
    sv2 \
      ~{true="-bam" false="" bam} \
      ~{true="-vcf" false="" vcf} \
      ~{true="-bed" false="" bed} \
      ~{true="-snv" false="" snv} \
      ~{true="-ped" false="" ped} \
      ~{true="-genome" false="" genome} \
      ~{true="-pcrfree" false="" pcr_free} \
      ~{true="-M" false="" bwa_mem_m} \
      ~{true="-merge" false="" merge} \
      ~{true="-min-ovr" false="" min_ovr} \
      ~{true="-no-anno" false="" no_an_no} \
      ~{true="-pre" false="" pre} \
      ~{true="-feats" false="" feats} \
      ~{true="-load-clf" false="" load_clf} \
      ~{true="-clf" false="" clf} \
      ~{true="-download" false="" download} \
      ~{true="-hg19" false="" h_gone_nine} \
      ~{true="-hg38" false="" hg_three_eight} \
      ~{true="-mm10" false="" mm_one_zero} \
      ~{true="-ini" false="" ini} \
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
    genome: "reference genome build <hg19, hg38, mm10> [default: hg19]"
    pcr_free: "GC content normalization for pcr free sequences"
    bwa_mem_m: "bwa mem -M compatibility, split-reads flagged as secondary instead of supplementary"
    merge: "merge overlapping SV breakpoints after genotyping"
    min_ovr: "minimum reciprocal overlap for merging [default: 0.8]"
    no_an_no: "genotype without annotating variants   "
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
}
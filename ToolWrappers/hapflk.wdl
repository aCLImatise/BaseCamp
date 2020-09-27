version 1.0

task Hapflk {
  input {
    String? prefix
    Int? n_cpu
    Boolean? eigen
    File? ped
    File? map_file_default
    File? file
    String? b_file
    Int? miss_geno
    Int? miss_pheno
    Int? miss_parent
    Int? miss_sex
    String? chr
    Int? from
    String? to
    Boolean? other_map
    File? kinship
    Int? reynolds_snps
    String? out_group
    Boolean? keep_out_group
    Int? set_number_clusters
    Int? n_fit
    Boolean? phased
    Boolean? no_k_frq
  }
  command <<<
    hapflk \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(n_cpu) then ("--ncpu " +  '"' + n_cpu + '"') else ""} \
      ~{if (eigen) then "--eigen" else ""} \
      ~{if defined(ped) then ("--ped " +  '"' + ped + '"') else ""} \
      ~{if defined(map_file_default) then ("--map " +  '"' + map_file_default + '"') else ""} \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""} \
      ~{if defined(b_file) then ("--bfile " +  '"' + b_file + '"') else ""} \
      ~{if defined(miss_geno) then ("--miss_geno " +  '"' + miss_geno + '"') else ""} \
      ~{if defined(miss_pheno) then ("--miss_pheno " +  '"' + miss_pheno + '"') else ""} \
      ~{if defined(miss_parent) then ("--miss_parent " +  '"' + miss_parent + '"') else ""} \
      ~{if defined(miss_sex) then ("--miss_sex " +  '"' + miss_sex + '"') else ""} \
      ~{if defined(chr) then ("--chr " +  '"' + chr + '"') else ""} \
      ~{if defined(from) then ("--from " +  '"' + from + '"') else ""} \
      ~{if defined(to) then ("--to " +  '"' + to + '"') else ""} \
      ~{if (other_map) then "--other_map" else ""} \
      ~{if defined(kinship) then ("--kinship " +  '"' + kinship + '"') else ""} \
      ~{if defined(reynolds_snps) then ("--reynolds-snps " +  '"' + reynolds_snps + '"') else ""} \
      ~{if defined(out_group) then ("--outgroup " +  '"' + out_group + '"') else ""} \
      ~{if (keep_out_group) then "--keep-outgroup" else ""} \
      ~{if defined(set_number_clusters) then ("-K " +  '"' + set_number_clusters + '"') else ""} \
      ~{if defined(n_fit) then ("--nfit " +  '"' + n_fit + '"') else ""} \
      ~{if (phased) then "--phased" else ""} \
      ~{if (no_k_frq) then "--no-kfrq" else ""}
  >>>
  parameter_meta {
    prefix: "prefix for output files (default: hapflk)"
    n_cpu: "Use N processors when possible (default: 1)"
    eigen: "Perform eigen decomposition of tests (default: False)"
    ped: "PED file (default: None)"
    map_file_default: "MAP file (default: None)"
    file: "PLINK file prefix (ped,map) (default: None)"
    b_file: "PLINK bfile prefix (bim,fam,bed) (default: None)"
    miss_geno: "Missing Genotype Code (default: 0)"
    miss_pheno: "Missing Phenotype Code (default: -9)"
    miss_parent: "Missing Parent Code (default: 0)"
    miss_sex: "Missing Sex Code (default: 0)"
    chr: "Select chromosome C (default: None)"
    from: "Select SNPs with position > x (in bp/cM) Warning :\\ndoes not work with BED files (default: 0)"
    to: "Select SNPs with position < x (in bp/cM) Warning :\\ndoes not work with BED files (default: inf)"
    other_map: "Use alternative map (genetic/RH) (default: False)"
    kinship: "Read population kinship from file (if None, kinship is\\nestimated) (default: None)"
    reynolds_snps: "Number of SNPs to use to estimate Reynolds distances\\n(default: 10000)"
    out_group: "Use population POP as outgroup for tree rooting (if\\nNone, use midpoint rooting) (default: None)"
    keep_out_group: "Keep outgroup in population set (default: False)"
    set_number_clusters: "Set the number of clusters to K. hapFLK calculations\\nswitched off if K<0 (default: -1)"
    n_fit: "Set the number of model fit to use (default: 20)"
    phased: "Haplotype data provided (default: False)"
    no_k_frq: "Do not write Cluster frequencies (default: False)"
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task TutorialEqtlbma.R {
  input {
    Boolean? verbose
    Boolean? pkg
    Boolean? nsb_grps
    Boolean? ninds
    Boolean? n_genes
    Boolean? nc_hrs
    Boolean? agl
    Boolean? a_il
    Boolean? anchor
    Boolean? cr_five
    Boolean? cr_three
    Boolean? fsg
    Boolean? as_g
    Boolean? maf
    Boolean? rare
    Boolean? pi_zero
    Boolean? cover_r
    Boolean? seed
    Boolean? dir
    Boolean? n_cores
  }
  command <<<
    tutorial_eqtlbma.R \
      ~{true="--verbose" false="" verbose} \
      ~{true="--pkg" false="" pkg} \
      ~{true="--nsbgrps" false="" nsb_grps} \
      ~{true="--ninds" false="" ninds} \
      ~{true="--ngenes" false="" n_genes} \
      ~{true="--nchrs" false="" nc_hrs} \
      ~{true="--agl" false="" agl} \
      ~{true="--ail" false="" a_il} \
      ~{true="--anchor" false="" anchor} \
      ~{true="--cr5" false="" cr_five} \
      ~{true="--cr3" false="" cr_three} \
      ~{true="--fsg" false="" fsg} \
      ~{true="--asg" false="" as_g} \
      ~{true="--maf" false="" maf} \
      ~{true="--rare" false="" rare} \
      ~{true="--pi0" false="" pi_zero} \
      ~{true="--coverr" false="" cover_r} \
      ~{true="--seed" false="" seed} \
      ~{true="--dir" false="" dir} \
      ~{true="--ncores" false="" n_cores}
  >>>
  parameter_meta {
    verbose: "verbosity level (0/default=1/2)"
    pkg: "absolute path to the package"
    nsb_grps: "nb of tissues (default=3)"
    ninds: "nb of individuals per subgroup (default=200) individuals are diploid a single number, say 200, means same individuals in all subgroups several numbers, say 200-150-200, means different individuals between subgroups (must agree with --nsbgrps)"
    n_genes: "nb of genes (default=1000)"
    nc_hrs: "nb of chromosome(s) (default=1)"
    agl: "average gene length (default=10000)"
    a_il: "average intergenic length (default=50000)"
    anchor: "anchor for cis region (default=TSS/TSS+TES)"
    cr_five: "radius of cis region in 5' (default=1000)"
    cr_three: "radius of cis region in 3' (default=1000)"
    fsg: "fixed nb of cis SNPs per gene (or use --asg)"
    as_g: "average nb of cis SNPs per gene (default=50)"
    maf: "minor allele frequency (default=0.3)"
    rare: "proportion of SNPs with rare alleles (with MAF=0.02, default=0.0)"
    pi_zero: "prior proba for a gene to have no eQTL in any subgroup (default=0.3)"
    cover_r: "error covariance between subgroups (default=1) 0: the SxS covariance matrix is diagonal (usually the case if different individuals between subgroups), same for all genes 1: the SxS covariance matrix is unconstrained (usually the case if same individuals in all subgroups), same for all genes"
    seed: "seed for the RNG (default=1859)"
    dir: "directory in which files are written (current by default)"
    n_cores: "nb of cores to run in parallel (default=1)"
  }
}
version 1.0

task Shapeit4 {
  input {
    String? seed
    Boolean? arg_number_used
    Boolean? arg_genotypes_phased
    Boolean? arg_reference_panel
    Boolean? arg_scaffold_haplotypes
    Boolean? arg_genetic_map
    Boolean? arg_target_region
    String? use_ps
    Boolean? sequencing
    String? mcmc_iterations
    String? mcmc_prune
    String? pb_wt_modulo
    String? pb_wt_depth
    String? pb_wt_mac
    String? pb_wt_mdr
    String? ibd_two_length
    String? ibd_two_maf
    String? ibd_two_mdr
    String? ibd_two_count
    String? ibd_two_output
    Boolean? arg__minimal
    String? effective_size
    Boolean? arg_phased_haplotypes
    String? log
  }
  command <<<
    shapeit4 \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{true="-T" false="" arg_number_used} \
      ~{true="-I" false="" arg_genotypes_phased} \
      ~{true="-H" false="" arg_reference_panel} \
      ~{true="-S" false="" arg_scaffold_haplotypes} \
      ~{true="-M" false="" arg_genetic_map} \
      ~{true="-R" false="" arg_target_region} \
      ~{if defined(use_ps) then ("--use-PS " +  '"' + use_ps + '"') else ""} \
      ~{true="--sequencing" false="" sequencing} \
      ~{if defined(mcmc_iterations) then ("--mcmc-iterations " +  '"' + mcmc_iterations + '"') else ""} \
      ~{if defined(mcmc_prune) then ("--mcmc-prune " +  '"' + mcmc_prune + '"') else ""} \
      ~{if defined(pb_wt_modulo) then ("--pbwt-modulo " +  '"' + pb_wt_modulo + '"') else ""} \
      ~{if defined(pb_wt_depth) then ("--pbwt-depth " +  '"' + pb_wt_depth + '"') else ""} \
      ~{if defined(pb_wt_mac) then ("--pbwt-mac " +  '"' + pb_wt_mac + '"') else ""} \
      ~{if defined(pb_wt_mdr) then ("--pbwt-mdr " +  '"' + pb_wt_mdr + '"') else ""} \
      ~{if defined(ibd_two_length) then ("--ibd2-length " +  '"' + ibd_two_length + '"') else ""} \
      ~{if defined(ibd_two_maf) then ("--ibd2-maf " +  '"' + ibd_two_maf + '"') else ""} \
      ~{if defined(ibd_two_mdr) then ("--ibd2-mdr " +  '"' + ibd_two_mdr + '"') else ""} \
      ~{if defined(ibd_two_count) then ("--ibd2-count " +  '"' + ibd_two_count + '"') else ""} \
      ~{if defined(ibd_two_output) then ("--ibd2-output " +  '"' + ibd_two_output + '"') else ""} \
      ~{true="-W" false="" arg__minimal} \
      ~{if defined(effective_size) then ("--effective-size " +  '"' + effective_size + '"') else ""} \
      ~{true="-O" false="" arg_phased_haplotypes} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""}
  >>>
  parameter_meta {
    seed: "(=15052011)                Seed of the random number generator"
    arg_number_used: "[ --thread ] arg (=1)              Number of thread used"
    arg_genotypes_phased: "[ --input ] arg                    Genotypes to be phased in VCF/BCF  format"
    arg_reference_panel: "[ --reference ] arg                Reference panel of haplotypes in  VCF/BCF format"
    arg_scaffold_haplotypes: "[ --scaffold ] arg                 Scaffold of haplotypes in VCF/BCF  format"
    arg_genetic_map: "[ --map ] arg                      Genetic map"
    arg_target_region: "[ --region ] arg                   Target region"
    use_ps: "Informs phasing using PS field from  read based phasing"
    sequencing: "Default parameter setting for  sequencing data (e.g. high variant  density)"
    mcmc_iterations: "(=5b,1p,1b,1p,1b,1p,5m) Iteration scheme of the MCMC"
    mcmc_prune: "(=0.999)             Pruning threshold in genotype graphs"
    pb_wt_modulo: "(=0.02)             Storage frequency of PBWT indexes in cM (i.e. storage every 0.02 cM by default)"
    pb_wt_depth: "(=4)                 Depth of PBWT indexes to condition on"
    pb_wt_mac: "(=2)                   Minimal Minor Allele Count at which  PBWT is evaluated"
    pb_wt_mdr: "(=0.5)                 Maximal Missing Data Rate at which PBWT is evaluated"
    ibd_two_length: "(=3)                Minimal size of IBD2 tracks for  building copying constraints"
    ibd_two_maf: "(=0.01)                Minimal Minor Allele Frequency for  variants to be considered in the IBD2  mapping"
    ibd_two_mdr: "(=0.5)                 Maximal Missing data rate for variants  to be considered in the IBD2 mapping"
    ibd_two_count: "(=150)               Minimal number of filtered variants in  IBD2 tracks"
    ibd_two_output: "Output all IBD2 constraints in the  specified file (useful for debugging!)"
    arg__minimal: "[ --window ] arg (=2.5)            Minimal size of the phasing window in  cM"
    effective_size: "(=15000)         Effective size of the population"
    arg_phased_haplotypes: "[ --output ] arg                   Phased haplotypes in VCF/BCF format"
    log: "Log file"
  }
}
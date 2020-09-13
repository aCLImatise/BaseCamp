version 1.0

task Pyseer {
  input {
    File? phenotypes
    File? phenotype_column
    File? km_ers
    File? vcf
    String? pres
    String? distances
    String? load_m
    String? similarity
    String? load_lmm
    String? save_m
    String? save_lmm
    String? mds
    Int? max_dimensions
    Boolean? no_distances
    Boolean? continuous
    Boolean? lmm
    String? wg
    Boolean? lineage
    String? lineage_clusters
    File? lineage_file
    Boolean? sequence_reweighting
    String? save_vars
    String? load_vars
    String? save_model
    Float? alpha
    Int? n_folds
    Int? min_af
    Int? max_af
    Int? max_missing
    Int? filter_p_value
    Int? lrt_p_value
    Float? cor_filter
    File? covariates
    Boolean? use_covariates
    Boolean? print_samples
    Boolean? print_filtered
    File? output_patterns
    Boolean? uncompressed
    Int? cpu
    Int? block_size
    String piggy
  }
  command <<<
    pyseer \
      ~{piggy} \
      ~{if defined(phenotypes) then ("--phenotypes " +  '"' + phenotypes + '"') else ""} \
      ~{if defined(phenotype_column) then ("--phenotype-column " +  '"' + phenotype_column + '"') else ""} \
      ~{if defined(km_ers) then ("--kmers " +  '"' + km_ers + '"') else ""} \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(pres) then ("--pres " +  '"' + pres + '"') else ""} \
      ~{if defined(distances) then ("--distances " +  '"' + distances + '"') else ""} \
      ~{if defined(load_m) then ("--load-m " +  '"' + load_m + '"') else ""} \
      ~{if defined(similarity) then ("--similarity " +  '"' + similarity + '"') else ""} \
      ~{if defined(load_lmm) then ("--load-lmm " +  '"' + load_lmm + '"') else ""} \
      ~{if defined(save_m) then ("--save-m " +  '"' + save_m + '"') else ""} \
      ~{if defined(save_lmm) then ("--save-lmm " +  '"' + save_lmm + '"') else ""} \
      ~{if defined(mds) then ("--mds " +  '"' + mds + '"') else ""} \
      ~{if defined(max_dimensions) then ("--max-dimensions " +  '"' + max_dimensions + '"') else ""} \
      ~{if (no_distances) then "--no-distances" else ""} \
      ~{if (continuous) then "--continuous" else ""} \
      ~{if (lmm) then "--lmm" else ""} \
      ~{if defined(wg) then ("--wg " +  '"' + wg + '"') else ""} \
      ~{if (lineage) then "--lineage" else ""} \
      ~{if defined(lineage_clusters) then ("--lineage-clusters " +  '"' + lineage_clusters + '"') else ""} \
      ~{if defined(lineage_file) then ("--lineage-file " +  '"' + lineage_file + '"') else ""} \
      ~{if (sequence_reweighting) then "--sequence-reweighting" else ""} \
      ~{if defined(save_vars) then ("--save-vars " +  '"' + save_vars + '"') else ""} \
      ~{if defined(load_vars) then ("--load-vars " +  '"' + load_vars + '"') else ""} \
      ~{if defined(save_model) then ("--save-model " +  '"' + save_model + '"') else ""} \
      ~{if defined(alpha) then ("--alpha " +  '"' + alpha + '"') else ""} \
      ~{if defined(n_folds) then ("--n-folds " +  '"' + n_folds + '"') else ""} \
      ~{if defined(min_af) then ("--min-af " +  '"' + min_af + '"') else ""} \
      ~{if defined(max_af) then ("--max-af " +  '"' + max_af + '"') else ""} \
      ~{if defined(max_missing) then ("--max-missing " +  '"' + max_missing + '"') else ""} \
      ~{if defined(filter_p_value) then ("--filter-pvalue " +  '"' + filter_p_value + '"') else ""} \
      ~{if defined(lrt_p_value) then ("--lrt-pvalue " +  '"' + lrt_p_value + '"') else ""} \
      ~{if defined(cor_filter) then ("--cor-filter " +  '"' + cor_filter + '"') else ""} \
      ~{if defined(covariates) then ("--covariates " +  '"' + covariates + '"') else ""} \
      ~{if (use_covariates) then "--use-covariates" else ""} \
      ~{if (print_samples) then "--print-samples" else ""} \
      ~{if (print_filtered) then "--print-filtered" else ""} \
      ~{if defined(output_patterns) then ("--output-patterns " +  '"' + output_patterns + '"') else ""} \
      ~{if (uncompressed) then "--uncompressed" else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if defined(block_size) then ("--block_size " +  '"' + block_size + '"') else ""}
  >>>
  parameter_meta {
    phenotypes: "Phenotypes file (whitespace separated)"
    phenotype_column: "Phenotype file column to use [Default: last column]"
    km_ers: "Kmers file"
    vcf: "VCF file. Will filter any non 'PASS' sites"
    pres: "Presence/absence .Rtab matrix as produced by roary and"
    distances: "Strains distance square matrix (fixed or lineage\\neffects)"
    load_m: "Load an existing matrix decomposition"
    similarity: "Strains similarity square matrix (for --lmm)"
    load_lmm: "Load an existing lmm cache"
    save_m: "Prefix for saving matrix decomposition"
    save_lmm: "Prefix for saving LMM cache"
    mds: "Type of multidimensional scaling [Default: classic]"
    max_dimensions: "Maximum number of dimensions to consider after MDS\\n[Default: 10]"
    no_distances: "Allow run without a distance matrix"
    continuous: "Force continuous phenotype [Default: binary auto-\\ndetect]"
    lmm: "Use random instead of fixed effects to correct for\\npopulation structure. Requires a similarity matrix"
    wg: "Use a whole genome model for association and\\nprediction. Population structure correction is\\nimplicit."
    lineage: "Report lineage effects"
    lineage_clusters: "Custom clusters to use as lineages [Default: MDS\\ncomponents]"
    lineage_file: "File to write lineage association to [Default:\\nlineage_effects.txt]"
    sequence_reweighting: "Use --lineage-clusters to downweight sequences."
    save_vars: "Prefix for saving variants"
    load_vars: "Prefix for loading variants"
    save_model: "Prefix for saving model"
    alpha: "Set the mixing between l1 and l2 penalties [Default:\\n0.0069]"
    n_folds: "Number of folds cross-validation to perform [Default:\\n10]"
    min_af: "Minimum AF [Default: 0.01]"
    max_af: "Maximum AF [Default: 0.99]"
    max_missing: "Maximum missing (vcf/Rtab) [Default: 0.05]"
    filter_p_value: "Prefiltering t-test pvalue threshold [Default: 1]"
    lrt_p_value: "Likelihood ratio test pvalue threshold [Default: 1]"
    cor_filter: "Correlation filter for elastic net (phenotype/variant\\ncorrelation quantile at which to start keeping\\nvariants) [Default: 0.25]"
    covariates: "User-defined covariates file (tab-delimited, no\\nheader, first column contains sample names)"
    use_covariates: "[USE_COVARIATES [USE_COVARIATES ...]]\\nCovariates to use. Format is \\\"2 3q 4\\\" (q for\\nquantitative) [Default: load covariates but don't use\\nthem]"
    print_samples: "Print sample lists [Default: hide samples]"
    print_filtered: "Print filtered variants (i.e. fitting errors)\\n[Default: hide them]"
    output_patterns: "File to print patterns to, useful for finding pvalue\\nthreshold"
    uncompressed: "Uncompressed kmers file [Default: gzipped]"
    cpu: "Processes [Default: 1]"
    block_size: "Number of variants per core [Default: 3000]"
    piggy: "--burden BURDEN       VCF regions to group variants by for burden testing"
  }
  output {
    File out_stdout = stdout()
  }
}
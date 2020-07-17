version 1.0

task EnetPredictPyseer {
  input {
    String? threshold
    String? lineage_clusters
    String? true_values
    Boolean? ignore_missing
    String? km_ers
    String? vcf
    String? pres
    String? burden
    Boolean? uncompressed
    String? covariates
    Boolean? use_covariates
    String model
    String samples
  }
  command <<<
    enet_predict_pyseer \
      ~{model} \
      ~{samples} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(lineage_clusters) then ("--lineage-clusters " +  '"' + lineage_clusters + '"') else ""} \
      ~{if defined(true_values) then ("--true-values " +  '"' + true_values + '"') else ""} \
      ~{true="--ignore-missing" false="" ignore_missing} \
      ~{if defined(km_ers) then ("--kmers " +  '"' + km_ers + '"') else ""} \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(pres) then ("--pres " +  '"' + pres + '"') else ""} \
      ~{if defined(burden) then ("--burden " +  '"' + burden + '"') else ""} \
      ~{true="--uncompressed" false="" uncompressed} \
      ~{if defined(covariates) then ("--covariates " +  '"' + covariates + '"') else ""} \
      ~{true="--use-covariates" false="" use_covariates}
  >>>
  parameter_meta {
    threshold: "Threshold to pick binary predictions"
    lineage_clusters: "Custom clusters to use as lineages to report stratified accuracy"
    true_values: "Pheno file with known phenotypes to calculate accuracy"
    ignore_missing: "Treat missing values as REF/0 rather than using the mean AF"
    km_ers: "Kmers file"
    vcf: "VCF file. Will filter any non 'PASS' sites"
    pres: "Presence/absence .Rtab matrix as produced by roary and piggy"
    burden: "VCF regions to group variants by for burden testing (requires --vcf). Requires vcf to be indexed"
    uncompressed: "Uncompressed kmers file [Default: gzipped]"
    covariates: "User-defined covariates file (tab-delimited, no header, first column contains sample names)"
    use_covariates: "[USE_COVARIATES [USE_COVARIATES ...]] Covariates to use. Format is \"2 3q 4\" (q for quantitative) [Default: load covariates but don't use them]"
    model: "Name of fitted model pickle file (.pkl)"
    samples: "File with samples to predict"
  }
}
version 1.0

task EnetPredictPyseer {
  input {
    String? threshold
    String? lineage_clusters
    File? true_values
    Boolean? ignore_missing
    File? km_ers
    File? vcf
    String? pres
    Boolean? uncompressed
    File? covariates
    Boolean? use_covariates
    String model
    String samples
    String piggy
  }
  command <<<
    enet_predict_pyseer \
      ~{model} \
      ~{samples} \
      ~{piggy} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(lineage_clusters) then ("--lineage-clusters " +  '"' + lineage_clusters + '"') else ""} \
      ~{if defined(true_values) then ("--true-values " +  '"' + true_values + '"') else ""} \
      ~{if (ignore_missing) then "--ignore-missing" else ""} \
      ~{if defined(km_ers) then ("--kmers " +  '"' + km_ers + '"') else ""} \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(pres) then ("--pres " +  '"' + pres + '"') else ""} \
      ~{if (uncompressed) then "--uncompressed" else ""} \
      ~{if defined(covariates) then ("--covariates " +  '"' + covariates + '"') else ""} \
      ~{if (use_covariates) then "--use-covariates" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    threshold: "Threshold to pick binary predictions"
    lineage_clusters: "Custom clusters to use as lineages to report\\nstratified accuracy"
    true_values: "Pheno file with known phenotypes to calculate accuracy"
    ignore_missing: "Treat missing values as REF/0 rather than using the\\nmean AF"
    km_ers: "Kmers file"
    vcf: "VCF file. Will filter any non 'PASS' sites"
    pres: "Presence/absence .Rtab matrix as produced by roary and"
    uncompressed: "Uncompressed kmers file [Default: gzipped]"
    covariates: "User-defined covariates file (tab-delimited, no\\nheader, first column contains sample names)"
    use_covariates: "[USE_COVARIATES [USE_COVARIATES ...]]\\nCovariates to use. Format is \\\"2 3q 4\\\" (q for\\nquantitative) [Default: load covariates but don't use\\nthem]\\n"
    model: "Name of fitted model pickle file (.pkl)"
    samples: "File with samples to predict"
    piggy: "--burden BURDEN       VCF regions to group variants by for burden testing"
  }
  output {
    File out_stdout = stdout()
  }
}
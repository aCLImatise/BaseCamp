version 1.0

task SomaticseqParallelpy {
  input {
    Directory? output_directory
    File? genome_reference
    String? truth_snv
    String? truth_in_del
    String? classifier_snv
    String? classifier_in_del
    Float? pass_threshold
    Float? low_qual_threshold
    String? algorithm
    Float? homozygous_threshold
    Float? heterozygous_threshold
    Int? minimum_mapping_quality
    Int? minimum_base_quality
    Int? minimum_num_callers
    String? dbsnp_vcf
    String? cosmic_vcf
    String? inclusion_region
    String? exclusion_region
    Int? threads
    Boolean? somatic_seq_train
    Int? seed
    Int? tree_depth
    Int? iterations
    Boolean? features_excluded
    Boolean? keep_intermediates
  }
  command <<<
    somaticseq_parallel_py \
      ~{if defined(output_directory) then ("--output-directory " +  '"' + output_directory + '"') else ""} \
      ~{if defined(genome_reference) then ("--genome-reference " +  '"' + genome_reference + '"') else ""} \
      ~{if defined(truth_snv) then ("--truth-snv " +  '"' + truth_snv + '"') else ""} \
      ~{if defined(truth_in_del) then ("--truth-indel " +  '"' + truth_in_del + '"') else ""} \
      ~{if defined(classifier_snv) then ("--classifier-snv " +  '"' + classifier_snv + '"') else ""} \
      ~{if defined(classifier_in_del) then ("--classifier-indel " +  '"' + classifier_in_del + '"') else ""} \
      ~{if defined(pass_threshold) then ("--pass-threshold " +  '"' + pass_threshold + '"') else ""} \
      ~{if defined(low_qual_threshold) then ("--lowqual-threshold " +  '"' + low_qual_threshold + '"') else ""} \
      ~{if defined(algorithm) then ("--algorithm " +  '"' + algorithm + '"') else ""} \
      ~{if defined(homozygous_threshold) then ("--homozygous-threshold " +  '"' + homozygous_threshold + '"') else ""} \
      ~{if defined(heterozygous_threshold) then ("--heterozygous-threshold " +  '"' + heterozygous_threshold + '"') else ""} \
      ~{if defined(minimum_mapping_quality) then ("--minimum-mapping-quality " +  '"' + minimum_mapping_quality + '"') else ""} \
      ~{if defined(minimum_base_quality) then ("--minimum-base-quality " +  '"' + minimum_base_quality + '"') else ""} \
      ~{if defined(minimum_num_callers) then ("--minimum-num-callers " +  '"' + minimum_num_callers + '"') else ""} \
      ~{if defined(dbsnp_vcf) then ("--dbsnp-vcf " +  '"' + dbsnp_vcf + '"') else ""} \
      ~{if defined(cosmic_vcf) then ("--cosmic-vcf " +  '"' + cosmic_vcf + '"') else ""} \
      ~{if defined(inclusion_region) then ("--inclusion-region " +  '"' + inclusion_region + '"') else ""} \
      ~{if defined(exclusion_region) then ("--exclusion-region " +  '"' + exclusion_region + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (somatic_seq_train) then "--somaticseq-train" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(tree_depth) then ("--tree-depth " +  '"' + tree_depth + '"') else ""} \
      ~{if defined(iterations) then ("--iterations " +  '"' + iterations + '"') else ""} \
      ~{if (features_excluded) then "--features-excluded" else ""} \
      ~{if (keep_intermediates) then "--keep-intermediates" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/somaticseq:3.6.2--py_0"
  }
  parameter_meta {
    output_directory: "output directory (default: .)"
    genome_reference: ".fasta.fai file to get the contigs (default: None)"
    truth_snv: "VCF of true hits (default: None)"
    truth_in_del: "VCF of true hits (default: None)"
    classifier_snv: "RData for SNV (default: None)"
    classifier_in_del: "RData for INDEL (default: None)"
    pass_threshold: "SCORE for PASS (default: 0.5)"
    low_qual_threshold: "SCORE for LowQual (default: 0.1)"
    algorithm: "ada or xgboost (default: xgboost)"
    homozygous_threshold: "VAF for homozygous (default: 0.85)"
    heterozygous_threshold: "VAF for heterozygous (default: 0.01)"
    minimum_mapping_quality: "Minimum mapping quality below which is considered poor\\n(default: 1)"
    minimum_base_quality: "Minimum base quality below which is considered poor\\n(default: 5)"
    minimum_num_callers: "Minimum number of tools to be considered (default:\\n0.5)"
    dbsnp_vcf: "dbSNP VCF (default: None)"
    cosmic_vcf: "COSMIC VCF (default: None)"
    inclusion_region: "inclusion bed (default: None)"
    exclusion_region: "exclusion bed (default: None)"
    threads: "number of threads (default: 1)"
    somatic_seq_train: "Invoke training mode with ground truths (default:\\nFalse)"
    seed: "seed for xgboost training (default: 0)"
    tree_depth: "max tree depth for xgboost training (default: 12)"
    iterations: "num boosting rounds for xgboost: default is 500 for\\ntraining and 100 for predicting, i.e., by default, 500\\ntrees are built for classifier, but only the first 100\\ntrees are used. (default: None)"
    features_excluded: "[FEATURES_EXCLUDED [FEATURES_EXCLUDED ...]]\\nfeatures to exclude for xgboost training. Must be same\\nfor train/predict. (default: [])"
    keep_intermediates: "Keep intermediate files (default: False)"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}
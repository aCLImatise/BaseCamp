version 1.0

task PapaaPancancerClassifierpy {
  input {
    File? genes
    String? diseases
    Int? folds
    Boolean? drop
    Boolean? copy_number
    Int? filter_count
    Int? filter_prop
    Int? num_features
    String? alphas
    Int? lone_ratios
    File? alt_genes
    String? alt_diseases
    Int? alt_filter_count
    Int? alt_filter_prop
    String? classifier_results
    Boolean? remove_hyper
    Boolean? keep_intermediate
    File? x_matrix
    Boolean? shuffled
    Boolean? shuffled_before_training
    Boolean? no_mutation
    File? drop_x_genes
    Boolean? drop_expression
    Boolean? drop_covariates
    File? filename_mut
    File? filename_mut_burden
    File? filename_sample
    File? filename_copy_loss
    File? filename_copy_gain
    File? filename_cancer_gene_classification
    String? seed
  }
  command <<<
    papaa_pancancer_classifier_py \
      ~{if defined(genes) then ("--genes " +  '"' + genes + '"') else ""} \
      ~{if defined(diseases) then ("--diseases " +  '"' + diseases + '"') else ""} \
      ~{if defined(folds) then ("--folds " +  '"' + folds + '"') else ""} \
      ~{if (drop) then "--drop" else ""} \
      ~{if (copy_number) then "--copy_number" else ""} \
      ~{if defined(filter_count) then ("--filter_count " +  '"' + filter_count + '"') else ""} \
      ~{if defined(filter_prop) then ("--filter_prop " +  '"' + filter_prop + '"') else ""} \
      ~{if defined(num_features) then ("--num_features " +  '"' + num_features + '"') else ""} \
      ~{if defined(alphas) then ("--alphas " +  '"' + alphas + '"') else ""} \
      ~{if defined(lone_ratios) then ("--l1_ratios " +  '"' + lone_ratios + '"') else ""} \
      ~{if defined(alt_genes) then ("--alt_genes " +  '"' + alt_genes + '"') else ""} \
      ~{if defined(alt_diseases) then ("--alt_diseases " +  '"' + alt_diseases + '"') else ""} \
      ~{if defined(alt_filter_count) then ("--alt_filter_count " +  '"' + alt_filter_count + '"') else ""} \
      ~{if defined(alt_filter_prop) then ("--alt_filter_prop " +  '"' + alt_filter_prop + '"') else ""} \
      ~{if defined(classifier_results) then ("--classifier_results " +  '"' + classifier_results + '"') else ""} \
      ~{if (remove_hyper) then "--remove_hyper" else ""} \
      ~{if (keep_intermediate) then "--keep_intermediate" else ""} \
      ~{if defined(x_matrix) then ("--x_matrix " +  '"' + x_matrix + '"') else ""} \
      ~{if (shuffled) then "--shuffled" else ""} \
      ~{if (shuffled_before_training) then "--shuffled_before_training" else ""} \
      ~{if (no_mutation) then "--no_mutation" else ""} \
      ~{if defined(drop_x_genes) then ("--drop_x_genes " +  '"' + drop_x_genes + '"') else ""} \
      ~{if (drop_expression) then "--drop_expression" else ""} \
      ~{if (drop_covariates) then "--drop_covariates" else ""} \
      ~{if defined(filename_mut) then ("--filename_mut " +  '"' + filename_mut + '"') else ""} \
      ~{if defined(filename_mut_burden) then ("--filename_mut_burden " +  '"' + filename_mut_burden + '"') else ""} \
      ~{if defined(filename_sample) then ("--filename_sample " +  '"' + filename_sample + '"') else ""} \
      ~{if defined(filename_copy_loss) then ("--filename_copy_loss " +  '"' + filename_copy_loss + '"') else ""} \
      ~{if defined(filename_copy_gain) then ("--filename_copy_gain " +  '"' + filename_copy_gain + '"') else ""} \
      ~{if defined(filename_cancer_gene_classification) then ("--filename_cancer_gene_classification " +  '"' + filename_cancer_gene_classification + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/papaa:0.1.9--0"
  }
  parameter_meta {
    genes: "string of the genes to extract or genelist file"
    diseases: "Comma sep string of TCGA disease acronyms.\\ndiseases_list_fileIf no arguments are passed,\\nfiltering will default to options given in\\n--filter_count and --filter_prop."
    folds: "Number of cross validation folds to perform"
    drop: "Decision to drop input genes from X matrix"
    copy_number: "Supplement Y matrix with copy number events"
    filter_count: "Min number of mutations in diseases to include"
    filter_prop: "Min proportion of positives to include disease"
    num_features: "Number of MAD genes to include in classifier"
    alphas: "the alphas for parameter sweep"
    lone_ratios: "the l1 ratios for parameter sweep"
    alt_genes: "string of the alt_genes to extract or alt_genelist\\nfile to test performance"
    alt_diseases: "The alternative diseases to test performance"
    alt_filter_count: "Min number of mutations in disease to include"
    alt_filter_prop: "Min proportion of positives to include disease"
    classifier_results: "Location to save classifier outputs"
    remove_hyper: "Remove hypermutated samples"
    keep_intermediate: "Keep intermediate ROC values for plotting"
    x_matrix: "Filename of features to use in model"
    shuffled: "Shuffle the input gene exprs matrix alongside"
    shuffled_before_training: "Shuffle the gene exprs matrix before training"
    no_mutation: "Remove mutation data from y matrix"
    drop_x_genes: "Comma separated list of genes to be dropped from X\\nmatrix, x_genelist file"
    drop_expression: "Decision to drop gene expression values from X"
    drop_covariates: "Decision to drop covariate information from X"
    filename_mut: "Filename of sample/gene mutations to use in model"
    filename_mut_burden: "Filename of sample mutation burden to use in model"
    filename_sample: "Filename of patient/samples to use in model"
    filename_copy_loss: "Filename of copy number loss"
    filename_copy_gain: "Filename of copy number gain"
    filename_cancer_gene_classification: "Filename of cancer gene classification table"
    seed: "option to set seed"
  }
  output {
    File out_stdout = stdout()
  }
}
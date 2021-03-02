version 1.0

task PapaaWithinDiseaseAnalysispy {
  input {
    File? genes
    File? diseases
    String? alphas
    Int? lone_ratios
    Int? num_features
    String? seed
    Boolean? remove_hyper
    String? classifier_results
    File? x_matrix
    File? filename_mut
    File? filename_mut_burden
    File? filename_sample
    File? filename_copy_loss
    File? filename_copy_gain
    File? filename_cancer_gene_classification
  }
  command <<<
    papaa_within_disease_analysis_py \
      ~{if defined(genes) then ("--genes " +  '"' + genes + '"') else ""} \
      ~{if defined(diseases) then ("--diseases " +  '"' + diseases + '"') else ""} \
      ~{if defined(alphas) then ("--alphas " +  '"' + alphas + '"') else ""} \
      ~{if defined(lone_ratios) then ("--l1_ratios " +  '"' + lone_ratios + '"') else ""} \
      ~{if defined(num_features) then ("--num_features " +  '"' + num_features + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (remove_hyper) then "--remove_hyper" else ""} \
      ~{if defined(classifier_results) then ("--classifier_results " +  '"' + classifier_results + '"') else ""} \
      ~{if defined(x_matrix) then ("--x_matrix " +  '"' + x_matrix + '"') else ""} \
      ~{if defined(filename_mut) then ("--filename_mut " +  '"' + filename_mut + '"') else ""} \
      ~{if defined(filename_mut_burden) then ("--filename_mut_burden " +  '"' + filename_mut_burden + '"') else ""} \
      ~{if defined(filename_sample) then ("--filename_sample " +  '"' + filename_sample + '"') else ""} \
      ~{if defined(filename_copy_loss) then ("--filename_copy_loss " +  '"' + filename_copy_loss + '"') else ""} \
      ~{if defined(filename_copy_gain) then ("--filename_copy_gain " +  '"' + filename_copy_gain + '"') else ""} \
      ~{if defined(filename_cancer_gene_classification) then ("--filename_cancer_gene_classification " +  '"' + filename_cancer_gene_classification + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/papaa:0.1.9--0"
  }
  parameter_meta {
    genes: "string of the genes to extract or genelist file"
    diseases: "comma seperated diseases list in a file"
    alphas: "the alphas for parameter sweep"
    lone_ratios: "the l1 ratios for parameter sweep"
    num_features: "Number of MAD genes to include in classifier"
    seed: "option to set seed"
    remove_hyper: "Remove hypermutated samples"
    classifier_results: "location to save"
    x_matrix: "Filename of features to use in model"
    filename_mut: "Filename of sample/gene mutations to use in model"
    filename_mut_burden: "Filename of sample mutation burden to use in model"
    filename_sample: "Filename of patient/samples to use in model"
    filename_copy_loss: "Filename of copy number loss"
    filename_copy_gain: "Filename of copy number gain"
    filename_cancer_gene_classification: "Filename of cancer gene classification table\\n"
  }
  output {
    File out_stdout = stdout()
  }
}
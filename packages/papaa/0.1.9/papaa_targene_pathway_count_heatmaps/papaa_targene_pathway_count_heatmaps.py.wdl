version 1.0

task PapaaTargenePathwayCountHeatmapspy {
  input {
    File? genes
    File? path_genes
    File? classifier_decisions
    File? x_matrix
    File? filename_mut
    File? filename_mut_burden
    File? filename_sample
    File? filename_copy_loss
    File? filename_copy_gain
    File? filename_cancer_gene_classification
  }
  command <<<
    papaa_targene_pathway_count_heatmaps_py \
      ~{if defined(genes) then ("--genes " +  '"' + genes + '"') else ""} \
      ~{if defined(path_genes) then ("--path_genes " +  '"' + path_genes + '"') else ""} \
      ~{if defined(classifier_decisions) then ("--classifier_decisions " +  '"' + classifier_decisions + '"') else ""} \
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
    genes: "string of the genes to extract or gene list file"
    path_genes: "pathway gene list file"
    classifier_decisions: "string of the location of classifier decisions file\\nwith predictions/scores"
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
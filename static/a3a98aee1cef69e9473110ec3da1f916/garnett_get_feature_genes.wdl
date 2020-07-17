version 1.0

task GarnettGetFeatureGenes.R {
  input {
    String? classifier_object
    String? node
    String? database
    Boolean? convert_ids
    String? output_path
  }
  command <<<
    garnett_get_feature_genes.R \
      ~{if defined(classifier_object) then ("--classifier-object " +  '"' + classifier_object + '"') else ""} \
      ~{if defined(node) then ("--node " +  '"' + node + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{true="--convert-ids" false="" convert_ids} \
      ~{if defined(output_path) then ("--output-path " +  '"' + output_path + '"') else ""}
  >>>
  parameter_meta {
    classifier_object: "path to the object of class garnett_classifier, which is either trained via garnett_train_classifier.R or obtained previously"
    node: "In case a hierarchical marker tree was used to train the  classifier, specify which node features should be shown. Default is 'root'. For other nodes, use the corresponding parent cell type name"
    database: "argument for Bioconductor AnnotationDb-class package used for converting gene IDs. For example, use org.Hs.eg.db for Homo Sapiens genes."
    convert_ids: "Boolean that indicates whether the gene IDs should be converted into SYMBOL notation. Default: FALSE"
    output_path: "Path to the output file"
  }
}
version 1.0

task ScmapScmapCluster.R {
  input {
    String? index_object_file
    String? projection_object_file
    String? threshold
    String? output_text_file
    String? output_object_file
  }
  command <<<
    scmap-scmap-cluster.R \
      ~{if defined(index_object_file) then ("--index-object-file " +  '"' + index_object_file + '"') else ""} \
      ~{if defined(projection_object_file) then ("--projection-object-file " +  '"' + projection_object_file + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(output_text_file) then ("--output-text-file " +  '"' + output_text_file + '"') else ""} \
      ~{if defined(output_object_file) then ("--output-object-file " +  '"' + output_object_file + '"') else ""}
  >>>
  parameter_meta {
    index_object_file: "'SingleCellExperiment' object previously prepared with the scmap-index-cluster.R script."
    projection_object_file: "'SingleCellExperiment' object to project."
    threshold: "Threshold on similarity (or probability for SVM and RF)."
    output_text_file: "File name in which to text-format cell type assignments."
    output_object_file: "File name in which to store serialized R object of type 'SingleCellExperiment'."
  }
}
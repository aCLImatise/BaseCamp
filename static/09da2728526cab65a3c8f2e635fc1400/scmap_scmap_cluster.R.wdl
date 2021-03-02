version 1.0

task ScmapscmapclusterR {
  input {
    File? index_object_file
    File? projection_object_file
    String? threshold
    File? output_text_file
    File? output_object_file
  }
  command <<<
    scmap_scmap_cluster_R \
      ~{if defined(index_object_file) then ("--index-object-file " +  '"' + index_object_file + '"') else ""} \
      ~{if defined(projection_object_file) then ("--projection-object-file " +  '"' + projection_object_file + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(output_text_file) then ("--output-text-file " +  '"' + output_text_file + '"') else ""} \
      ~{if defined(output_object_file) then ("--output-object-file " +  '"' + output_object_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    index_object_file: "'SingleCellExperiment' object previously prepared with the scmap-index-cluster.R script."
    projection_object_file: "'SingleCellExperiment' object to project."
    threshold: "Threshold on similarity (or probability for SVM and RF)."
    output_text_file: "File name in which to text-format cell type assignments."
    output_object_file: "File name in which to store serialized R object of type 'SingleCellExperiment'."
  }
  output {
    File out_stdout = stdout()
    File out_output_text_file = "${in_output_text_file}"
    File out_output_object_file = "${in_output_object_file}"
  }
}
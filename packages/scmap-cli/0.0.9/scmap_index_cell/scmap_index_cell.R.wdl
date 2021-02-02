version 1.0

task ScmapindexcellR {
  input {
    File? input_object_file
    Int? number_chunks
    Int? number_clusters
    String? train_id
    String? random_seed
    File? output_object_file
  }
  command <<<
    scmap_index_cell_R \
      ~{if defined(input_object_file) then ("--input-object-file " +  '"' + input_object_file + '"') else ""} \
      ~{if defined(number_chunks) then ("--number-chunks " +  '"' + number_chunks + '"') else ""} \
      ~{if defined(number_clusters) then ("--number-clusters " +  '"' + number_clusters + '"') else ""} \
      ~{if defined(train_id) then ("--train-id " +  '"' + train_id + '"') else ""} \
      ~{if defined(random_seed) then ("--random-seed " +  '"' + random_seed + '"') else ""} \
      ~{if defined(output_object_file) then ("--output-object-file " +  '"' + output_object_file + '"') else ""}
  >>>
  parameter_meta {
    input_object_file: "singleCellExperiment object containing expression values and experimental information. Must have been appropriately prepared."
    number_chunks: "Number of chunks into which the expr matrix is split."
    number_clusters: "Number of clusters per group for k-means clustering."
    train_id: "ID of the training dataset (optional)"
    random_seed: "Set random seed to make scmap-cell reproducible."
    output_object_file: "File name in which to store serialized R object of type 'SingleCellExperiment'."
  }
  output {
    File out_stdout = stdout()
    File out_output_object_file = "${in_output_object_file}"
  }
}
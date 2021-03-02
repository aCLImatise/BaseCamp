version 1.0

task ScmapscmapcellR {
  input {
    File? index_object_file
    File? projection_object_file
    Int? number_nearest_neighbours
    Int? cluster_col
    File? output_object_file
    File? output_clusters_text_file
    File? closest_cells_text_file
    File? closest_cells_similarities_text_file
  }
  command <<<
    scmap_scmap_cell_R \
      ~{if defined(index_object_file) then ("--index-object-file " +  '"' + index_object_file + '"') else ""} \
      ~{if defined(projection_object_file) then ("--projection-object-file " +  '"' + projection_object_file + '"') else ""} \
      ~{if defined(number_nearest_neighbours) then ("--number-nearest-neighbours " +  '"' + number_nearest_neighbours + '"') else ""} \
      ~{if defined(cluster_col) then ("--cluster-col " +  '"' + cluster_col + '"') else ""} \
      ~{if defined(output_object_file) then ("--output-object-file " +  '"' + output_object_file + '"') else ""} \
      ~{if defined(output_clusters_text_file) then ("--output-clusters-text-file " +  '"' + output_clusters_text_file + '"') else ""} \
      ~{if defined(closest_cells_text_file) then ("--closest-cells-text-file " +  '"' + closest_cells_text_file + '"') else ""} \
      ~{if defined(closest_cells_similarities_text_file) then ("--closest-cells-similarities-text-file " +  '"' + closest_cells_similarities_text_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    index_object_file: "'SingleCellExperiment' object previously prepared with the scmap-index-cluster.R script."
    projection_object_file: "'SingleCellExperiment' object to project."
    number_nearest_neighbours: "A positive integer specifying the number of nearest neighbours to find."
    cluster_col: "Column name in the 'colData' slot of the SingleCellExperiment index object containing the cell classification information. If found in the index object, scmapCell2Cluster() will be run to annotate cells of the projection dataset using labels of the reference."
    output_object_file: "File name in which to store serialized R object of type 'SingleCellExperiment', containing the input object specified by --projection-object-file with cluster labels in its colData (where --cluster-col is set and scmapCell2Cluster() is run)."
    output_clusters_text_file: "File name in which to text-format cell type assignments."
    closest_cells_text_file: "File name in which to store the top cell IDs of the cells of the reference dataset that a given cell of the projection dataset is closest to."
    closest_cells_similarities_text_file: "File name in which to store cosine similarities for the top cells of the reference dataset that a given cell of the projection dataset is closest to."
  }
  output {
    File out_stdout = stdout()
    File out_output_object_file = "${in_output_object_file}"
    File out_output_clusters_text_file = "${in_output_clusters_text_file}"
  }
}
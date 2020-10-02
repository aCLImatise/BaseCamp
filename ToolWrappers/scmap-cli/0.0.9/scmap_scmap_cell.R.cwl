class: CommandLineTool
id: scmap_scmap_cell.R.cwl
inputs:
- id: in_index_object_file
  doc: "'SingleCellExperiment' object previously prepared with the scmap-index-cluster.R\
    \ script."
  type: File
  inputBinding:
    prefix: --index-object-file
- id: in_projection_object_file
  doc: "'SingleCellExperiment' object to project."
  type: File
  inputBinding:
    prefix: --projection-object-file
- id: in_number_nearest_neighbours
  doc: A positive integer specifying the number of nearest neighbours to find.
  type: long
  inputBinding:
    prefix: --number-nearest-neighbours
- id: in_cluster_col
  doc: Column name in the 'colData' slot of the SingleCellExperiment index object
    containing the cell classification information. If found in the index object,
    scmapCell2Cluster() will be run to annotate cells of the projection dataset using
    labels of the reference.
  type: long
  inputBinding:
    prefix: --cluster-col
- id: in_output_object_file
  doc: File name in which to store serialized R object of type 'SingleCellExperiment',
    containing the input object specified by --projection-object-file with cluster
    labels in its colData (where --cluster-col is set and scmapCell2Cluster() is run).
  type: File
  inputBinding:
    prefix: --output-object-file
- id: in_output_clusters_text_file
  doc: File name in which to text-format cell type assignments.
  type: File
  inputBinding:
    prefix: --output-clusters-text-file
- id: in_closest_cells_text_file
  doc: File name in which to store the top cell IDs of the cells of the reference
    dataset that a given cell of the projection dataset is closest to.
  type: File
  inputBinding:
    prefix: --closest-cells-text-file
- id: in_closest_cells_similarities_text_file
  doc: File name in which to store cosine similarities for the top cells of the reference
    dataset that a given cell of the projection dataset is closest to.
  type: File
  inputBinding:
    prefix: --closest-cells-similarities-text-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_object_file
  doc: File name in which to store serialized R object of type 'SingleCellExperiment',
    containing the input object specified by --projection-object-file with cluster
    labels in its colData (where --cluster-col is set and scmapCell2Cluster() is run).
  type: File
  outputBinding:
    glob: $(inputs.in_output_object_file)
- id: out_output_clusters_text_file
  doc: File name in which to text-format cell type assignments.
  type: File
  outputBinding:
    glob: $(inputs.in_output_clusters_text_file)
cwlVersion: v1.1
baseCommand:
- scmap-scmap-cell.R

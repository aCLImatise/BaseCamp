version 1.0

task OVisualizeDistanceMatrix.R {
  input {
    String? metadata
    String? otu_limits
    String? output_file_prefix
    String? distance_col
    String? distance_row
    String? clustering
    String? pdf_size
    String? tree_height_col
    String? tree_height_row
    String? title
    String heat_map_do_tr
    String input_file
  }
  command <<<
    o-visualize-distance-matrix.R \
      ~{heat_map_do_tr} \
      ~{input_file} \
      ~{if defined(metadata) then ("--metadata " +  '"' + metadata + '"') else ""} \
      ~{if defined(otu_limits) then ("--otu_limits " +  '"' + otu_limits + '"') else ""} \
      ~{if defined(output_file_prefix) then ("--output_file_prefix " +  '"' + output_file_prefix + '"') else ""} \
      ~{if defined(distance_col) then ("--distance_col " +  '"' + distance_col + '"') else ""} \
      ~{if defined(distance_row) then ("--distance_row " +  '"' + distance_row + '"') else ""} \
      ~{if defined(clustering) then ("--clustering " +  '"' + clustering + '"') else ""} \
      ~{if defined(pdf_size) then ("--pdf_size " +  '"' + pdf_size + '"') else ""} \
      ~{if defined(tree_height_col) then ("--treeheight_col " +  '"' + tree_height_col + '"') else ""} \
      ~{if defined(tree_height_row) then ("--treeheight_row " +  '"' + tree_height_row + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""}
  >>>
  parameter_meta {
    metadata: "Metadata file"
    otu_limits: "Color 3% OTU limits [default \"FALSE\"]"
    output_file_prefix: "Output file prefix for visualization files [default \"unknown\"]"
    distance_col: "Distance metric for columns [default \"horn\"]"
    distance_row: "Distance metric for rows [default \"horn\"]"
    clustering: "Clistering method [default \"ward\"]"
    pdf_size: "PDF output height and width [default \"20\"]"
    tree_height_col: "Dendrogram size for columns [default \"100\"]"
    tree_height_row: "Dendrogram size for rows (0 would make it disappear) [default \"100\"]"
    title: "Title for the output figure [default '(unknown title)']"
    heat_map_do_tr: ""
    input_file: ""
  }
}
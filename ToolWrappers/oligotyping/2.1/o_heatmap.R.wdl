version 1.0

task OheatmapR {
  input {
    File? metadata
    File? output_file_prefix
    String? distance_col
    String? distance_row
    String? clustering
    Int? pdf_height
    Int? tree_height_col
    Int? tree_height_row
    String? show_row_names
    String? scale_the_other_way
    String? title
    String heat_map_do_tr
    String input_file
  }
  command <<<
    o_heatmap_R \
      ~{heat_map_do_tr} \
      ~{input_file} \
      ~{if defined(metadata) then ("--metadata " +  '"' + metadata + '"') else ""} \
      ~{if defined(output_file_prefix) then ("--output_file_prefix " +  '"' + output_file_prefix + '"') else ""} \
      ~{if defined(distance_col) then ("--distance_col " +  '"' + distance_col + '"') else ""} \
      ~{if defined(distance_row) then ("--distance_row " +  '"' + distance_row + '"') else ""} \
      ~{if defined(clustering) then ("--clustering " +  '"' + clustering + '"') else ""} \
      ~{if defined(pdf_height) then ("--pdf_height " +  '"' + pdf_height + '"') else ""} \
      ~{if defined(tree_height_col) then ("--treeheight_col " +  '"' + tree_height_col + '"') else ""} \
      ~{if defined(tree_height_row) then ("--treeheight_row " +  '"' + tree_height_row + '"') else ""} \
      ~{if defined(show_row_names) then ("--show_rownames " +  '"' + show_row_names + '"') else ""} \
      ~{if defined(scale_the_other_way) then ("--scale_the_other_way " +  '"' + scale_the_other_way + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""}
  >>>
  parameter_meta {
    metadata: "Metadata file"
    output_file_prefix: "Output file prefix for visualization files [default \\\"unknown\\\"]"
    distance_col: "Distance metric for columns [default \\\"horn\\\"]"
    distance_row: "Distance metric for rows [default \\\"horn\\\"]"
    clustering: "Clistering method [default \\\"ward\\\"]"
    pdf_height: "PDF output height [default \\\"9\\\"]"
    tree_height_col: "Dendrogram size for columns [default \\\"100\\\"]"
    tree_height_row: "Dendrogram size for rows (0 would make it disappear) [default \\\"100\\\"]"
    show_row_names: "Show row names [default \\\"FALSE\\\"]"
    scale_the_other_way: "Scale based on columns [default \\\"FALSE\\\"]"
    title: "Title for the output figure [default '(unknown title)']"
    heat_map_do_tr: ""
    input_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_prefix = "${in_output_file_prefix}"
  }
}
version 1.0

task SeuratdimplotR {
  input {
    File? input_object_file
    String? input_format
    String? reduction_use
    Int? dim_one
    Int? dim_two
    File? cells_use
    Int? pt_size
    Int? label_size
    String? do_label
    String? group_by
    String? plot_title
    String? do_bare
    String? cols_use
    String? pt_shape
    String? coord_fixed
    String? no_axes
    String? dark_theme
    String? plot_order
    String? png_width
    File? png_height
    File? output_image_file
  }
  command <<<
    seurat_dim_plot_R \
      ~{if defined(input_object_file) then ("--input-object-file " +  '"' + input_object_file + '"') else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(reduction_use) then ("--reduction-use " +  '"' + reduction_use + '"') else ""} \
      ~{if defined(dim_one) then ("--dim-1 " +  '"' + dim_one + '"') else ""} \
      ~{if defined(dim_two) then ("--dim-2 " +  '"' + dim_two + '"') else ""} \
      ~{if defined(cells_use) then ("--cells-use " +  '"' + cells_use + '"') else ""} \
      ~{if defined(pt_size) then ("--pt-size " +  '"' + pt_size + '"') else ""} \
      ~{if defined(label_size) then ("--label-size " +  '"' + label_size + '"') else ""} \
      ~{if defined(do_label) then ("--do-label " +  '"' + do_label + '"') else ""} \
      ~{if defined(group_by) then ("--group-by " +  '"' + group_by + '"') else ""} \
      ~{if defined(plot_title) then ("--plot-title " +  '"' + plot_title + '"') else ""} \
      ~{if defined(do_bare) then ("--do-bare " +  '"' + do_bare + '"') else ""} \
      ~{if defined(cols_use) then ("--cols-use " +  '"' + cols_use + '"') else ""} \
      ~{if defined(pt_shape) then ("--pt-shape " +  '"' + pt_shape + '"') else ""} \
      ~{if defined(coord_fixed) then ("--coord-fixed " +  '"' + coord_fixed + '"') else ""} \
      ~{if defined(no_axes) then ("--no-axes " +  '"' + no_axes + '"') else ""} \
      ~{if defined(dark_theme) then ("--dark-theme " +  '"' + dark_theme + '"') else ""} \
      ~{if defined(plot_order) then ("--plot-order " +  '"' + plot_order + '"') else ""} \
      ~{if defined(png_width) then ("--png-width " +  '"' + png_width + '"') else ""} \
      ~{if defined(png_height) then ("--png-height " +  '"' + png_height + '"') else ""} \
      ~{if defined(output_image_file) then ("--output-image-file " +  '"' + output_image_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_object_file: "File name in which a serialized R matrix object may be found."
    input_format: "Either loom, seurat, anndata or singlecellexperiment for the input format to read."
    reduction_use: "Which dimensionality reduction to use. Default is \\\"pca\\\", can also be \\\"tsne\\\", or \\\"ica\\\", assuming these are precomputed."
    dim_one: "Dimension for x-axis (default 1)"
    dim_two: "Dimension for y-axis (default 2)"
    cells_use: "File to be used to derive a vector of cells to plot (default is all cells)."
    pt_size: "Adjust point size for plotting"
    label_size: "Sets size of labels."
    do_label: "Whether to label the clusters."
    group_by: "Group (color) cells in different ways (for example, orig.ident)."
    plot_title: "Title for plot."
    do_bare: "Do only minimal formatting (default : FALSE)"
    cols_use: "Comma-separated list of colors, each color corresponds to an identity class. By default, ggplot assigns colors."
    pt_shape: "If NULL, all points are circles (default). You can specify any cell attribute (that can be pulled with FetchData) allowing for both different colors and different shapes on cells."
    coord_fixed: "Use a fixed scale coordinate system (for spatial coordinates). Default is FALSE"
    no_axes: "Setting to TRUE will remove the axes."
    dark_theme: "Use a dark theme for the plot."
    plot_order: "Comma-separated string specifying the order of plotting for the idents (clusters). This can be useful for crowded plots if points of interest are being buried. Provide either a full list of valid idents or a subset to be plotted last (on top).."
    png_width: "Width of png (px)."
    png_height: "Height of png file (px)."
    output_image_file: "File name in which to save the PCA image"
  }
  output {
    File out_stdout = stdout()
    File out_output_image_file = "${in_output_image_file}"
  }
}
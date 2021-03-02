version 1.0

task Monocle3PlotCells {
  input {
    Int? input_object_format
    String? output_plot_format
    Int? xdim
    Int? ydim
    String? reduction_method
    String? color_cells_by
    String? genes
    String? norm_method
    Int? cell_size
    String? alpha
    Boolean? label_cell_groups
    Boolean? no_trajectory_graph
    Boolean? label_groups_by_cluster
    Boolean? label_leaves
    Boolean? label_roots
    Boolean? label_branch_points
    Boolean? verbose
    String input_object
    String output_plot
  }
  command <<<
    monocle3 plotCells \
      ~{input_object} \
      ~{output_plot} \
      ~{if defined(input_object_format) then ("--input-object-format " +  '"' + input_object_format + '"') else ""} \
      ~{if defined(output_plot_format) then ("--output-plot-format " +  '"' + output_plot_format + '"') else ""} \
      ~{if defined(xdim) then ("--xdim " +  '"' + xdim + '"') else ""} \
      ~{if defined(ydim) then ("--ydim " +  '"' + ydim + '"') else ""} \
      ~{if defined(reduction_method) then ("--reduction-method " +  '"' + reduction_method + '"') else ""} \
      ~{if defined(color_cells_by) then ("--color-cells-by " +  '"' + color_cells_by + '"') else ""} \
      ~{if defined(genes) then ("--genes " +  '"' + genes + '"') else ""} \
      ~{if defined(norm_method) then ("--norm-method " +  '"' + norm_method + '"') else ""} \
      ~{if defined(cell_size) then ("--cell-size " +  '"' + cell_size + '"') else ""} \
      ~{if defined(alpha) then ("--alpha " +  '"' + alpha + '"') else ""} \
      ~{if (label_cell_groups) then "--label-cell-groups" else ""} \
      ~{if (no_trajectory_graph) then "--no-trajectory-graph" else ""} \
      ~{if (label_groups_by_cluster) then "--label-groups-by-cluster" else ""} \
      ~{if (label_leaves) then "--label-leaves" else ""} \
      ~{if (label_roots) then "--label-roots" else ""} \
      ~{if (label_branch_points) then "--label-branch-points" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_object_format: "Format of input object. [Default: cds3]"
    output_plot_format: "Format of output plot, choose from {png, pdf}. [Default: png]"
    xdim: "The column of reducedDimS(cds) to plot on the horizontal axis. [Default: 1]"
    ydim: "The column of reducedDimS(cds) to plot on the vertical axis. [Default: 2]"
    reduction_method: "The dimensionality reduction for plotting, choose from {UMAP, tSNE, PCA, LSI}. [Default: UMAP]"
    color_cells_by: "The cell attribute (e.g. the column of pData(cds)) to map to each cell's color, or one of {clusters, partitions, pseudotime}. [Default: pseudotime]"
    genes: "A comma-separated list of gene IDs/short names to plot, one per panel."
    norm_method: "Determines how to transform expression values for plotting, choose from {log, size_only}. [Default: log]"
    cell_size: "The size of the point for each cell. [Default: 1.5]"
    alpha: "The alpha aesthetics for the original cell points, useful to highlight the learned principal graph."
    label_cell_groups: "If set, display the cell group names directly on the plot. Otherwise include a color legend on the side of the plot."
    no_trajectory_graph: "When this option is set, skip displaying the trajectory graph inferred by learn_graph()."
    label_groups_by_cluster: "If set, and setting --color-cells-by to something other than cluster, label the cells of each cluster independently. Can result in duplicate labels being present in the manifold."
    label_leaves: "If set, label the leaves of the principal graph."
    label_roots: "If set, label the roots of the principal graph."
    label_branch_points: "If set, label the branch points of the principal graph."
    verbose: "Emit verbose output."
    input_object: ""
    output_plot: ""
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task PegasusPlot {
  input {
    Int? dpi
    Int? restriction
    String? attributes
    Int? basis
    String? alpha
    String? legend_loc
    String? palette
    Boolean? show_background
    Int? nrows
    Int? ncols
    Int? panel_size
    String? figures_left_margin
    String? bottom
    String? w_space
    String? hspace
    String? group_by
    String? condition
    String? style
    String plot_type
    String input_file
    String output_file
  }
  command <<<
    pegasus plot \
      ~{plot_type} \
      ~{input_file} \
      ~{output_file} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if defined(restriction) then ("--restriction " +  '"' + restriction + '"') else ""} \
      ~{if defined(attributes) then ("--attributes " +  '"' + attributes + '"') else ""} \
      ~{if defined(basis) then ("--basis " +  '"' + basis + '"') else ""} \
      ~{if defined(alpha) then ("--alpha " +  '"' + alpha + '"') else ""} \
      ~{if defined(legend_loc) then ("--legend-loc " +  '"' + legend_loc + '"') else ""} \
      ~{if defined(palette) then ("--palette " +  '"' + palette + '"') else ""} \
      ~{if (show_background) then "--show-background" else ""} \
      ~{if defined(nrows) then ("--nrows " +  '"' + nrows + '"') else ""} \
      ~{if defined(ncols) then ("--ncols " +  '"' + ncols + '"') else ""} \
      ~{if defined(panel_size) then ("--panel-size " +  '"' + panel_size + '"') else ""} \
      ~{if defined(figures_left_margin) then ("--left " +  '"' + figures_left_margin + '"') else ""} \
      ~{if defined(bottom) then ("--bottom " +  '"' + bottom + '"') else ""} \
      ~{if defined(w_space) then ("--wspace " +  '"' + w_space + '"') else ""} \
      ~{if defined(hspace) then ("--hspace " +  '"' + hspace + '"') else ""} \
      ~{if defined(group_by) then ("--groupby " +  '"' + group_by + '"') else ""} \
      ~{if defined(condition) then ("--condition " +  '"' + condition + '"') else ""} \
      ~{if defined(style) then ("--style " +  '"' + style + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pegasuspy:1.2.0--py38h0213d0e_1"
  }
  parameter_meta {
    dpi: "DPI value for the figure. [default: 500]"
    restriction: "...     Set restriction if you only want to plot a subset of data. Multiple <restriction> strings are allowed. There are two types of <restriction>s: global restriction and attribute-specific restriction. Global restriction appiles to all attributes in ``attrs`` and takes the format of 'key:value,value...', or 'key:~value,value...'. This restriction selects cells with the ``data.obs[key]`` values belong to 'value,value...' (or not belong to if '~' shows). Attribute-specific restriction takes the format of 'attr:key:value,value...', or 'attr:key:~value,value...'. It only applies to one attribute 'attr'. If 'attr' and 'key' are the same, one can use '.' to replace 'key' (e.g. ``cluster_labels:.:value1,value2``).Each <restriction> takes the format of 'attr:value,value', or 'attr:~value,value...\\\" which means excluding values. This option is used in both 'composition' and 'scatter'."
    attributes: "<attrs> is a comma-separated list of attributes to color the basis. This option is only used in 'scatter'."
    basis: "Basis for 2D plotting, chosen from 'umap', 'tsne', 'fitsne', 'fle', 'net_umap', 'net_tsne', 'net_fitsne' or 'net_fle'. [default: umap]"
    alpha: "Point transparent parameter. Can be a single value or a list of values separated by comma used for each attribute in <attrs>."
    legend_loc: "Legend location, can be either \\\"right margin\\\" or \\\"on data\\\". If a list is provided, set 'legend_loc' for each attribute in 'attrs' separately. [default: right margin]"
    palette: "Used for setting colors for every categories in categorical attributes. Multiple <palette> strings are allowed. Each string takes the format of 'attr:color1,color2,...,colorn'. 'attr' is the categorical attribute and 'color1' - 'colorn' are the colors for each category in 'attr' (e.g. 'cluster_labels:black,blue,red,...,yellow'). If there is only one categorical attribute in 'attrs', ``palletes`` can be set as a single string and the 'attr' keyword can be omitted (e.g. \\\"blue,yellow,red\\\")."
    show_background: "Show points that are not selected as gray."
    nrows: "Number of rows in the figure. If not set, pegasus will figure it out automatically."
    ncols: "Number of columns in the figure. If not set, pegasus will figure it out automatically."
    panel_size: "Panel size in inches, w x h, separated by comma. Note that margins are not counted in the sizes. For composition, default is (6, 4). For scatter plots, default is (4, 4)."
    figures_left_margin: "Figure's left margin in fraction with respect to panel width."
    bottom: "Figure's bottom margin in fraction with respect to panel height."
    w_space: "Horizontal space between panels in fraction with respect to panel width."
    hspace: "Vertical space between panels in fraction with respect to panel height."
    group_by: "Use <attr> to categorize the cells for the composition plot, e.g. cell type."
    condition: "Use <attr> to calculate frequency within each category defined by '--groupby' for the composition plot, e.g. donor."
    style: "Composition plot styles. Can be either 'frequency' or 'normalized'. [default: normalized]"
    plot_type: "Plot type, either 'scatter' for scatter plots or 'compo' for composition plots"
    input_file: "Single cell data in Zarr or H5ad format."
    output_file: "Output image file."
  }
  output {
    File out_stdout = stdout()
  }
}
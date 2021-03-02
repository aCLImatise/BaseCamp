version 1.0

task Hclust2py {
  input {
    Boolean? the_input_matrix
    File? output_image_file
    File? legend_file
    String? input_type
    File? out_table
    Int? fname_row
    Int? sname_row
    String? metadata_rows
    File? skip_rows
    String? s_perc
    Int? f_top
    String? def_na
    String? f_dist_f
    String? s_dist_f
    String? load_dist_matrix_f
    String? load_dist_matrix_s
    File? load_pickled_dist_matrix_f
    File? load_pickled_dist_matrix_s
    File? save_pickled_dist_matrix_f
    File? save_pickled_dist_matrix_s
    Boolean? no_f_clustering
    Boolean? no_plot_f_clustering
    Boolean? no_s_clustering
    Boolean? no_plot_s_clustering
    String? f_linkage
    String? s_linkage
    Int? dpi
    Boolean? log_scale
    String? title
    Int? title_font_size
    Boolean? sqrt_scale
    Boolean? no_s_labels
    Int? min_v
    Int? max_v
    Boolean? no_f_labels
    Int? max_s_label_len
    Int? max_f_label_len
    Int? f_label_size
    Int? s_label_size
    Int? fd_end_width
    Int? sd_end_height
    Float? metadata_height
    Float? metadata_separation
    Int? colorbar_font_size
    Int? image_size
    Float? cell_aspect_ratio
    String? colormap
    String? top_c
    String? nan_c
    String? input_file
    String? output_file
  }
  command <<<
    hclust2_py \
      ~{input_file} \
      ~{output_file} \
      ~{if (the_input_matrix) then "-i" else ""} \
      ~{if (output_image_file) then "-o" else ""} \
      ~{if (legend_file) then "--legend_file" else ""} \
      ~{if defined(input_type) then ("--input_type " +  '"' + input_type + '"') else ""} \
      ~{if defined(out_table) then ("--out_table " +  '"' + out_table + '"') else ""} \
      ~{if defined(fname_row) then ("--fname_row " +  '"' + fname_row + '"') else ""} \
      ~{if defined(sname_row) then ("--sname_row " +  '"' + sname_row + '"') else ""} \
      ~{if defined(metadata_rows) then ("--metadata_rows " +  '"' + metadata_rows + '"') else ""} \
      ~{if defined(skip_rows) then ("--skip_rows " +  '"' + skip_rows + '"') else ""} \
      ~{if defined(s_perc) then ("--sperc " +  '"' + s_perc + '"') else ""} \
      ~{if defined(f_top) then ("--ftop " +  '"' + f_top + '"') else ""} \
      ~{if defined(def_na) then ("--def_na " +  '"' + def_na + '"') else ""} \
      ~{if defined(f_dist_f) then ("--f_dist_f " +  '"' + f_dist_f + '"') else ""} \
      ~{if defined(s_dist_f) then ("--s_dist_f " +  '"' + s_dist_f + '"') else ""} \
      ~{if defined(load_dist_matrix_f) then ("--load_dist_matrix_f " +  '"' + load_dist_matrix_f + '"') else ""} \
      ~{if defined(load_dist_matrix_s) then ("--load_dist_matrix_s " +  '"' + load_dist_matrix_s + '"') else ""} \
      ~{if defined(load_pickled_dist_matrix_f) then ("--load_pickled_dist_matrix_f " +  '"' + load_pickled_dist_matrix_f + '"') else ""} \
      ~{if defined(load_pickled_dist_matrix_s) then ("--load_pickled_dist_matrix_s " +  '"' + load_pickled_dist_matrix_s + '"') else ""} \
      ~{if defined(save_pickled_dist_matrix_f) then ("--save_pickled_dist_matrix_f " +  '"' + save_pickled_dist_matrix_f + '"') else ""} \
      ~{if defined(save_pickled_dist_matrix_s) then ("--save_pickled_dist_matrix_s " +  '"' + save_pickled_dist_matrix_s + '"') else ""} \
      ~{if (no_f_clustering) then "--no_fclustering" else ""} \
      ~{if (no_plot_f_clustering) then "--no_plot_fclustering" else ""} \
      ~{if (no_s_clustering) then "--no_sclustering" else ""} \
      ~{if (no_plot_s_clustering) then "--no_plot_sclustering" else ""} \
      ~{if defined(f_linkage) then ("--flinkage " +  '"' + f_linkage + '"') else ""} \
      ~{if defined(s_linkage) then ("--slinkage " +  '"' + s_linkage + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if (log_scale) then "--log_scale" else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if defined(title_font_size) then ("--title_fontsize " +  '"' + title_font_size + '"') else ""} \
      ~{if (sqrt_scale) then "--sqrt_scale" else ""} \
      ~{if (no_s_labels) then "--no_slabels" else ""} \
      ~{if defined(min_v) then ("--minv " +  '"' + min_v + '"') else ""} \
      ~{if defined(max_v) then ("--maxv " +  '"' + max_v + '"') else ""} \
      ~{if (no_f_labels) then "--no_flabels" else ""} \
      ~{if defined(max_s_label_len) then ("--max_slabel_len " +  '"' + max_s_label_len + '"') else ""} \
      ~{if defined(max_f_label_len) then ("--max_flabel_len " +  '"' + max_f_label_len + '"') else ""} \
      ~{if defined(f_label_size) then ("--flabel_size " +  '"' + f_label_size + '"') else ""} \
      ~{if defined(s_label_size) then ("--slabel_size " +  '"' + s_label_size + '"') else ""} \
      ~{if defined(fd_end_width) then ("--fdend_width " +  '"' + fd_end_width + '"') else ""} \
      ~{if defined(sd_end_height) then ("--sdend_height " +  '"' + sd_end_height + '"') else ""} \
      ~{if defined(metadata_height) then ("--metadata_height " +  '"' + metadata_height + '"') else ""} \
      ~{if defined(metadata_separation) then ("--metadata_separation " +  '"' + metadata_separation + '"') else ""} \
      ~{if defined(colorbar_font_size) then ("--colorbar_font_size " +  '"' + colorbar_font_size + '"') else ""} \
      ~{if defined(image_size) then ("--image_size " +  '"' + image_size + '"') else ""} \
      ~{if defined(cell_aspect_ratio) then ("--cell_aspect_ratio " +  '"' + cell_aspect_ratio + '"') else ""} \
      ~{if defined(colormap) then ("--colormap " +  '"' + colormap + '"') else ""} \
      ~{if defined(top_c) then ("--top_c " +  '"' + top_c + '"') else ""} \
      ~{if defined(nan_c) then ("--nan_c " +  '"' + nan_c + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    the_input_matrix: "[INPUT_FILE], --inp [INPUT_FILE], --in [INPUT_FILE]\\nThe input matrix"
    output_image_file: "[OUTPUT_FILE], --out [OUTPUT_FILE]\\nThe output image file [image on screen of not\\nspecified]"
    legend_file: "[LEGEND_FILE]\\nThe output file for the legend of the provided\\nmetadata"
    input_type: "The input type can be a data matrix or distance matrix\\n[default data_matrix]"
    out_table: "Write processed data matrix to file"
    fname_row: "row number containing the names of the features\\n[default 0, specify -1 if no names are present in the\\nmatrix"
    sname_row: "column number containing the names of the samples\\n[default 0, specify -1 if no names are present in the\\nmatrix"
    metadata_rows: "Row numbers to use as metadata[default None, meaning\\nno metadata"
    skip_rows: "Row numbers to skip (0-indexed, comma separated) from\\nthe input file[default None, meaning no rows skipped"
    s_perc: "Percentile of sample value distribution for sample"
    f_top: "Number of top features to select (ordering based on\\npercentile specified by --fperc)"
    def_na: "Set the default value for missing values [default None\\nwhich means no replacement]"
    f_dist_f: "Distance function for features [default correlation]"
    s_dist_f: "Distance function for sample [default euclidean]"
    load_dist_matrix_f: "Load the distance matrix to be used for features\\n[default None]."
    load_dist_matrix_s: "Load the distance matrix to be used for samples\\n[default None]."
    load_pickled_dist_matrix_f: "Load the distance matrix to be used for features as\\npreviously saved as pickle file using hclust2 itself\\n[default None]."
    load_pickled_dist_matrix_s: "Load the distance matrix to be used for samples as\\npreviously saved as pickle file using hclust2 itself\\n[default None]."
    save_pickled_dist_matrix_f: "Save the distance matrix for features to file [default\\nNone]."
    save_pickled_dist_matrix_s: "Save the distance matrix for samples to file [default\\nNone]."
    no_f_clustering: "avoid clustering features"
    no_plot_f_clustering: "avoid plotting the feature dendrogram"
    no_s_clustering: "avoid clustering samples"
    no_plot_s_clustering: "avoid plotting the sample dendrogram"
    f_linkage: "Linkage method for feature clustering [default\\naverage]"
    s_linkage: "Linkage method for sample clustering [default average]"
    dpi: "Image resolution in dpi [default 150]"
    log_scale: "Log scale"
    title: "Title of the plot"
    title_font_size: "Font size of the title"
    sqrt_scale: "Square root scale"
    no_s_labels: "Do not show sample labels"
    min_v: "Minimum value to display in the color map [default\\nNone meaning automatic]"
    max_v: "Maximum value to display in the color map [default\\nNone meaning automatic]"
    no_f_labels: "Do not show feature labels"
    max_s_label_len: "Max number of chars to report for sample labels\\n[default 15]"
    max_f_label_len: "Max number of chars to report for feature labels\\n[default 15]"
    f_label_size: "Feature label font size [default 10]"
    s_label_size: "Sample label font size [default 10]"
    fd_end_width: "Width of the feature dendrogram [default 1 meaning\\n100% of default heatmap width]"
    sd_end_height: "Height of the sample dendrogram [default 1 meaning\\n100% of default heatmap height]"
    metadata_height: "Height of the metadata panel [default 0.05 meaning 5%\\nof default heatmap height]"
    metadata_separation: "Distance between the metadata and data panels.\\n[default 0.001 meaning 0.1% of default heatmap height]"
    colorbar_font_size: "Color bar label font size [default 12]"
    image_size: "Size of the largest between width and eight size for\\nthe image in inches [default 8]"
    cell_aspect_ratio: "Aspect ratio between width and height for the cells of\\nthe heatmap [default 1.0]"
    colormap: "Color to use for cells below the minimum value of the\\nscale [default None meaning bottom color of the scale]"
    top_c: "Color to use for cells below the maximum value of the\\nscale [default None meaning bottom color of the scale]"
    nan_c: "Color to use for nan cells [default None]"
    input_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_image_file = "${in_output_image_file}"
    File out_legend_file = "${in_legend_file}"
  }
}
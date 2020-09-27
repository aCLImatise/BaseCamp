version 1.0

task Hclust2py {
  input {
    Boolean? the_input_matrix
    File? output_image_file
    File? legend_file
    String? input_type
    Int? sep
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
      ~{if defined(sep) then ("--sep " +  '"' + sep + '"') else ""} \
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
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""}
  >>>
  parameter_meta {
    the_input_matrix: "[INPUT_FILE], --inp [INPUT_FILE], --in [INPUT_FILE]\\nThe input matrix"
    output_image_file: "[OUTPUT_FILE], --out [OUTPUT_FILE]\\nThe output image file [image on screen of not\\nspecified]"
    legend_file: "[LEGEND_FILE]\\nThe output file for the legend of the provided\\nmetadata"
    input_type: "The input type can be a data matrix or distance matrix\\n[default data_matrix]"
    sep: "--out_table OUT_TABLE\\nWrite processed data matrix to file\\n--fname_row FNAME_ROW\\nrow number containing the names of the features\\n[default 0, specify -1 if no names are present in the\\nmatrix\\n--sname_row SNAME_ROW\\ncolumn number containing the names of the samples\\n[default 0, specify -1 if no names are present in the\\nmatrix\\n--metadata_rows METADATA_ROWS\\nRow numbers to use as metadata[default None, meaning\\nno metadata\\n--skip_rows SKIP_ROWS\\nRow numbers to skip (0-indexed, comma separated) from\\nthe input file[default None, meaning no rows skipped\\n--sperc SPERC         Percentile of sample value distribution for sample\\nselection\\n--fperc FPERC         Percentile of feature value distribution for sample\\nselection\\n--stop STOP           Number of top samples to select (ordering based on\\npercentile specified by --sperc)\\n--ftop FTOP           Number of top features to select (ordering based on\\npercentile specified by --fperc)\\n--def_na DEF_NA       Set the default value for missing values [default None\\nwhich means no replacement]"
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
    dpi: "Image resolution in dpi [default 150]\\n-l, --log_scale       Log scale\\n--title TITLE         Title of the plot\\n--title_fontsize TITLE_FONTSIZE\\nFont size of the title\\n-s, --sqrt_scale      Square root scale\\n--no_slabels          Do not show sample labels\\n--minv MINV           Minimum value to display in the color map [default\\nNone meaning automatic]\\n--maxv MAXV           Maximum value to display in the color map [default\\nNone meaning automatic]\\n--no_flabels          Do not show feature labels\\n--max_slabel_len MAX_SLABEL_LEN\\nMax number of chars to report for sample labels\\n[default 15]\\n--max_flabel_len MAX_FLABEL_LEN\\nMax number of chars to report for feature labels\\n[default 15]\\n--flabel_size FLABEL_SIZE\\nFeature label font size [default 10]\\n--slabel_size SLABEL_SIZE\\nSample label font size [default 10]\\n--fdend_width FDEND_WIDTH\\nWidth of the feature dendrogram [default 1 meaning\\n100% of default heatmap width]\\n--sdend_height SDEND_HEIGHT\\nHeight of the sample dendrogram [default 1 meaning\\n100% of default heatmap height]\\n--metadata_height METADATA_HEIGHT\\nHeight of the metadata panel [default 0.05 meaning 5%\\nof default heatmap height]\\n--metadata_separation METADATA_SEPARATION\\nDistance between the metadata and data panels.\\n[default 0.001 meaning 0.1% of default heatmap height]\\n--colorbar_font_size COLORBAR_FONT_SIZE\\nColor bar label font size [default 12]\\n--image_size IMAGE_SIZE\\nSize of the largest between width and eight size for\\nthe image in inches [default 8]\\n--cell_aspect_ratio CELL_ASPECT_RATIO\\nAspect ratio between width and height for the cells of\\nthe heatmap [default 1.0]\\n-c {Blues,BrBG,BuGn,BuPu,GnBu,Greens,Greys,OrRd,Oranges,PRGn,PiYG,PuBu,PuBuGn,PuOr,PuRd,Purples,RdBu,RdGy,RdPu,RdYlBu,RdYlGn,Reds,Spectral,YlGn,YlGnBu,YlOrBr,YlOrRd,afmhot,autumn,binary,bone,brg,bwr,cool,copper,flag,gist_earth,gist_gray,gist_heat,gist_ncar,gist_rainbow,gist_stern,gist_yarg,gnuplot,gnuplot2,gray,hot,hsv,jet,ocean,pink,prism,rainbow,seismic,spectral,spring,summer,terrain,winter,bbcyr,bbcry,bcry}, --colormap {Blues,BrBG,BuGn,BuPu,GnBu,Greens,Greys,OrRd,Oranges,PRGn,PiYG,PuBu,PuBuGn,PuOr,PuRd,Purples,RdBu,RdGy,RdPu,RdYlBu,RdYlGn,Reds,Spectral,YlGn,YlGnBu,YlOrBr,YlOrRd,afmhot,autumn,binary,bone,brg,bwr,cool,copper,flag,gist_earth,gist_gray,gist_heat,gist_ncar,gist_rainbow,gist_stern,gist_yarg,gnuplot,gnuplot2,gray,hot,hsv,jet,ocean,pink,prism,rainbow,seismic,spectral,spring,summer,terrain,winter,bbcyr,bbcry,bcry}\\n--bottom_c BOTTOM_C   Color to use for cells below the minimum value of the\\nscale [default None meaning bottom color of the scale]\\n--top_c TOP_C         Color to use for cells below the maximum value of the\\nscale [default None meaning bottom color of the scale]\\n--nan_c NAN_C         Color to use for nan cells [default None]\\n"
    input_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_image_file = "${in_output_image_file}"
    File out_legend_file = "${in_legend_file}"
  }
}
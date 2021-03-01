class: CommandLineTool
id: hclust2.py.cwl
inputs:
- id: in_the_input_matrix
  doc: "[INPUT_FILE], --inp [INPUT_FILE], --in [INPUT_FILE]\nThe input matrix"
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_output_image_file
  doc: "[OUTPUT_FILE], --out [OUTPUT_FILE]\nThe output image file [image on screen\
    \ of not\nspecified]"
  type: File?
  inputBinding:
    prefix: -o
- id: in_legend_file
  doc: "[LEGEND_FILE]\nThe output file for the legend of the provided\nmetadata"
  type: File?
  inputBinding:
    prefix: --legend_file
- id: in_input_type
  doc: "The input type can be a data matrix or distance matrix\n[default data_matrix]"
  type: string?
  inputBinding:
    prefix: --input_type
- id: in_out_table
  doc: Write processed data matrix to file
  type: File?
  inputBinding:
    prefix: --out_table
- id: in_fname_row
  doc: "row number containing the names of the features\n[default 0, specify -1 if\
    \ no names are present in the\nmatrix"
  type: long?
  inputBinding:
    prefix: --fname_row
- id: in_sname_row
  doc: "column number containing the names of the samples\n[default 0, specify -1\
    \ if no names are present in the\nmatrix"
  type: long?
  inputBinding:
    prefix: --sname_row
- id: in_metadata_rows
  doc: "Row numbers to use as metadata[default None, meaning\nno metadata"
  type: string?
  inputBinding:
    prefix: --metadata_rows
- id: in_skip_rows
  doc: "Row numbers to skip (0-indexed, comma separated) from\nthe input file[default\
    \ None, meaning no rows skipped"
  type: File?
  inputBinding:
    prefix: --skip_rows
- id: in_s_perc
  doc: Percentile of sample value distribution for sample
  type: string?
  inputBinding:
    prefix: --sperc
- id: in_f_top
  doc: "Number of top features to select (ordering based on\npercentile specified\
    \ by --fperc)"
  type: long?
  inputBinding:
    prefix: --ftop
- id: in_def_na
  doc: "Set the default value for missing values [default None\nwhich means no replacement]"
  type: string?
  inputBinding:
    prefix: --def_na
- id: in_f_dist_f
  doc: Distance function for features [default correlation]
  type: string?
  inputBinding:
    prefix: --f_dist_f
- id: in_s_dist_f
  doc: Distance function for sample [default euclidean]
  type: string?
  inputBinding:
    prefix: --s_dist_f
- id: in_load_dist_matrix_f
  doc: "Load the distance matrix to be used for features\n[default None]."
  type: string?
  inputBinding:
    prefix: --load_dist_matrix_f
- id: in_load_dist_matrix_s
  doc: "Load the distance matrix to be used for samples\n[default None]."
  type: string?
  inputBinding:
    prefix: --load_dist_matrix_s
- id: in_load_pickled_dist_matrix_f
  doc: "Load the distance matrix to be used for features as\npreviously saved as pickle\
    \ file using hclust2 itself\n[default None]."
  type: File?
  inputBinding:
    prefix: --load_pickled_dist_matrix_f
- id: in_load_pickled_dist_matrix_s
  doc: "Load the distance matrix to be used for samples as\npreviously saved as pickle\
    \ file using hclust2 itself\n[default None]."
  type: File?
  inputBinding:
    prefix: --load_pickled_dist_matrix_s
- id: in_save_pickled_dist_matrix_f
  doc: "Save the distance matrix for features to file [default\nNone]."
  type: File?
  inputBinding:
    prefix: --save_pickled_dist_matrix_f
- id: in_save_pickled_dist_matrix_s
  doc: "Save the distance matrix for samples to file [default\nNone]."
  type: File?
  inputBinding:
    prefix: --save_pickled_dist_matrix_s
- id: in_no_f_clustering
  doc: avoid clustering features
  type: boolean?
  inputBinding:
    prefix: --no_fclustering
- id: in_no_plot_f_clustering
  doc: avoid plotting the feature dendrogram
  type: boolean?
  inputBinding:
    prefix: --no_plot_fclustering
- id: in_no_s_clustering
  doc: avoid clustering samples
  type: boolean?
  inputBinding:
    prefix: --no_sclustering
- id: in_no_plot_s_clustering
  doc: avoid plotting the sample dendrogram
  type: boolean?
  inputBinding:
    prefix: --no_plot_sclustering
- id: in_f_linkage
  doc: "Linkage method for feature clustering [default\naverage]"
  type: string?
  inputBinding:
    prefix: --flinkage
- id: in_s_linkage
  doc: Linkage method for sample clustering [default average]
  type: string?
  inputBinding:
    prefix: --slinkage
- id: in_dpi
  doc: Image resolution in dpi [default 150]
  type: long?
  inputBinding:
    prefix: --dpi
- id: in_log_scale
  doc: Log scale
  type: boolean?
  inputBinding:
    prefix: --log_scale
- id: in_title
  doc: Title of the plot
  type: string?
  inputBinding:
    prefix: --title
- id: in_title_font_size
  doc: Font size of the title
  type: long?
  inputBinding:
    prefix: --title_fontsize
- id: in_sqrt_scale
  doc: Square root scale
  type: boolean?
  inputBinding:
    prefix: --sqrt_scale
- id: in_no_s_labels
  doc: Do not show sample labels
  type: boolean?
  inputBinding:
    prefix: --no_slabels
- id: in_min_v
  doc: "Minimum value to display in the color map [default\nNone meaning automatic]"
  type: long?
  inputBinding:
    prefix: --minv
- id: in_max_v
  doc: "Maximum value to display in the color map [default\nNone meaning automatic]"
  type: long?
  inputBinding:
    prefix: --maxv
- id: in_no_f_labels
  doc: Do not show feature labels
  type: boolean?
  inputBinding:
    prefix: --no_flabels
- id: in_max_s_label_len
  doc: "Max number of chars to report for sample labels\n[default 15]"
  type: long?
  inputBinding:
    prefix: --max_slabel_len
- id: in_max_f_label_len
  doc: "Max number of chars to report for feature labels\n[default 15]"
  type: long?
  inputBinding:
    prefix: --max_flabel_len
- id: in_f_label_size
  doc: Feature label font size [default 10]
  type: long?
  inputBinding:
    prefix: --flabel_size
- id: in_s_label_size
  doc: Sample label font size [default 10]
  type: long?
  inputBinding:
    prefix: --slabel_size
- id: in_fd_end_width
  doc: "Width of the feature dendrogram [default 1 meaning\n100% of default heatmap\
    \ width]"
  type: long?
  inputBinding:
    prefix: --fdend_width
- id: in_sd_end_height
  doc: "Height of the sample dendrogram [default 1 meaning\n100% of default heatmap\
    \ height]"
  type: long?
  inputBinding:
    prefix: --sdend_height
- id: in_metadata_height
  doc: "Height of the metadata panel [default 0.05 meaning 5%\nof default heatmap\
    \ height]"
  type: double?
  inputBinding:
    prefix: --metadata_height
- id: in_metadata_separation
  doc: "Distance between the metadata and data panels.\n[default 0.001 meaning 0.1%\
    \ of default heatmap height]"
  type: double?
  inputBinding:
    prefix: --metadata_separation
- id: in_colorbar_font_size
  doc: Color bar label font size [default 12]
  type: long?
  inputBinding:
    prefix: --colorbar_font_size
- id: in_image_size
  doc: "Size of the largest between width and eight size for\nthe image in inches\
    \ [default 8]"
  type: long?
  inputBinding:
    prefix: --image_size
- id: in_cell_aspect_ratio
  doc: "Aspect ratio between width and height for the cells of\nthe heatmap [default\
    \ 1.0]"
  type: double?
  inputBinding:
    prefix: --cell_aspect_ratio
- id: in_colormap
  doc: "Color to use for cells below the minimum value of the\nscale [default None\
    \ meaning bottom color of the scale]"
  type: string?
  inputBinding:
    prefix: --colormap
- id: in_top_c
  doc: "Color to use for cells below the maximum value of the\nscale [default None\
    \ meaning bottom color of the scale]"
  type: string?
  inputBinding:
    prefix: --top_c
- id: in_nan_c
  doc: Color to use for nan cells [default None]
  type: string?
  inputBinding:
    prefix: --nan_c
- id: in_input_file
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_output_file
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_image_file
  doc: "[OUTPUT_FILE], --out [OUTPUT_FILE]\nThe output image file [image on screen\
    \ of not\nspecified]"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_image_file)
- id: out_legend_file
  doc: "[LEGEND_FILE]\nThe output file for the legend of the provided\nmetadata"
  type: File?
  outputBinding:
    glob: $(inputs.in_legend_file)
hints: []
cwlVersion: v1.1
baseCommand:
- hclust2.py

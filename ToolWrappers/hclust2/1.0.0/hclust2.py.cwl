class: CommandLineTool
id: hclust2.py.cwl
inputs:
- id: in_the_input_matrix
  doc: "[INPUT_FILE], --inp [INPUT_FILE], --in [INPUT_FILE]\nThe input matrix"
  type: boolean
  inputBinding:
    prefix: -i
- id: in_output_image_file
  doc: "[OUTPUT_FILE], --out [OUTPUT_FILE]\nThe output image file [image on screen\
    \ of not\nspecified]"
  type: File
  inputBinding:
    prefix: -o
- id: in_legend_file
  doc: "[LEGEND_FILE]\nThe output file for the legend of the provided\nmetadata"
  type: File
  inputBinding:
    prefix: --legend_file
- id: in_input_type
  doc: "The input type can be a data matrix or distance matrix\n[default data_matrix]"
  type: string
  inputBinding:
    prefix: --input_type
- id: in_sep
  doc: "--out_table OUT_TABLE\nWrite processed data matrix to file\n--fname_row FNAME_ROW\n\
    row number containing the names of the features\n[default 0, specify -1 if no\
    \ names are present in the\nmatrix\n--sname_row SNAME_ROW\ncolumn number containing\
    \ the names of the samples\n[default 0, specify -1 if no names are present in\
    \ the\nmatrix\n--metadata_rows METADATA_ROWS\nRow numbers to use as metadata[default\
    \ None, meaning\nno metadata\n--skip_rows SKIP_ROWS\nRow numbers to skip (0-indexed,\
    \ comma separated) from\nthe input file[default None, meaning no rows skipped\n\
    --sperc SPERC         Percentile of sample value distribution for sample\nselection\n\
    --fperc FPERC         Percentile of feature value distribution for sample\nselection\n\
    --stop STOP           Number of top samples to select (ordering based on\npercentile\
    \ specified by --sperc)\n--ftop FTOP           Number of top features to select\
    \ (ordering based on\npercentile specified by --fperc)\n--def_na DEF_NA      \
    \ Set the default value for missing values [default None\nwhich means no replacement]"
  type: long
  inputBinding:
    prefix: --sep
- id: in_f_dist_f
  doc: Distance function for features [default correlation]
  type: string
  inputBinding:
    prefix: --f_dist_f
- id: in_s_dist_f
  doc: Distance function for sample [default euclidean]
  type: string
  inputBinding:
    prefix: --s_dist_f
- id: in_load_dist_matrix_f
  doc: "Load the distance matrix to be used for features\n[default None]."
  type: string
  inputBinding:
    prefix: --load_dist_matrix_f
- id: in_load_dist_matrix_s
  doc: "Load the distance matrix to be used for samples\n[default None]."
  type: string
  inputBinding:
    prefix: --load_dist_matrix_s
- id: in_load_pickled_dist_matrix_f
  doc: "Load the distance matrix to be used for features as\npreviously saved as pickle\
    \ file using hclust2 itself\n[default None]."
  type: File
  inputBinding:
    prefix: --load_pickled_dist_matrix_f
- id: in_load_pickled_dist_matrix_s
  doc: "Load the distance matrix to be used for samples as\npreviously saved as pickle\
    \ file using hclust2 itself\n[default None]."
  type: File
  inputBinding:
    prefix: --load_pickled_dist_matrix_s
- id: in_save_pickled_dist_matrix_f
  doc: "Save the distance matrix for features to file [default\nNone]."
  type: File
  inputBinding:
    prefix: --save_pickled_dist_matrix_f
- id: in_save_pickled_dist_matrix_s
  doc: "Save the distance matrix for samples to file [default\nNone]."
  type: File
  inputBinding:
    prefix: --save_pickled_dist_matrix_s
- id: in_no_f_clustering
  doc: avoid clustering features
  type: boolean
  inputBinding:
    prefix: --no_fclustering
- id: in_no_plot_f_clustering
  doc: avoid plotting the feature dendrogram
  type: boolean
  inputBinding:
    prefix: --no_plot_fclustering
- id: in_no_s_clustering
  doc: avoid clustering samples
  type: boolean
  inputBinding:
    prefix: --no_sclustering
- id: in_no_plot_s_clustering
  doc: avoid plotting the sample dendrogram
  type: boolean
  inputBinding:
    prefix: --no_plot_sclustering
- id: in_f_linkage
  doc: "Linkage method for feature clustering [default\naverage]"
  type: string
  inputBinding:
    prefix: --flinkage
- id: in_s_linkage
  doc: Linkage method for sample clustering [default average]
  type: string
  inputBinding:
    prefix: --slinkage
- id: in_dpi
  doc: "Image resolution in dpi [default 150]\n-l, --log_scale       Log scale\n--title\
    \ TITLE         Title of the plot\n--title_fontsize TITLE_FONTSIZE\nFont size\
    \ of the title\n-s, --sqrt_scale      Square root scale\n--no_slabels        \
    \  Do not show sample labels\n--minv MINV           Minimum value to display in\
    \ the color map [default\nNone meaning automatic]\n--maxv MAXV           Maximum\
    \ value to display in the color map [default\nNone meaning automatic]\n--no_flabels\
    \          Do not show feature labels\n--max_slabel_len MAX_SLABEL_LEN\nMax number\
    \ of chars to report for sample labels\n[default 15]\n--max_flabel_len MAX_FLABEL_LEN\n\
    Max number of chars to report for feature labels\n[default 15]\n--flabel_size\
    \ FLABEL_SIZE\nFeature label font size [default 10]\n--slabel_size SLABEL_SIZE\n\
    Sample label font size [default 10]\n--fdend_width FDEND_WIDTH\nWidth of the feature\
    \ dendrogram [default 1 meaning\n100% of default heatmap width]\n--sdend_height\
    \ SDEND_HEIGHT\nHeight of the sample dendrogram [default 1 meaning\n100% of default\
    \ heatmap height]\n--metadata_height METADATA_HEIGHT\nHeight of the metadata panel\
    \ [default 0.05 meaning 5%\nof default heatmap height]\n--metadata_separation\
    \ METADATA_SEPARATION\nDistance between the metadata and data panels.\n[default\
    \ 0.001 meaning 0.1% of default heatmap height]\n--colorbar_font_size COLORBAR_FONT_SIZE\n\
    Color bar label font size [default 12]\n--image_size IMAGE_SIZE\nSize of the largest\
    \ between width and eight size for\nthe image in inches [default 8]\n--cell_aspect_ratio\
    \ CELL_ASPECT_RATIO\nAspect ratio between width and height for the cells of\n\
    the heatmap [default 1.0]\n-c {Blues,BrBG,BuGn,BuPu,GnBu,Greens,Greys,OrRd,Oranges,PRGn,PiYG,PuBu,PuBuGn,PuOr,PuRd,Purples,RdBu,RdGy,RdPu,RdYlBu,RdYlGn,Reds,Spectral,YlGn,YlGnBu,YlOrBr,YlOrRd,afmhot,autumn,binary,bone,brg,bwr,cool,copper,flag,gist_earth,gist_gray,gist_heat,gist_ncar,gist_rainbow,gist_stern,gist_yarg,gnuplot,gnuplot2,gray,hot,hsv,jet,ocean,pink,prism,rainbow,seismic,spectral,spring,summer,terrain,winter,bbcyr,bbcry,bcry},\
    \ --colormap {Blues,BrBG,BuGn,BuPu,GnBu,Greens,Greys,OrRd,Oranges,PRGn,PiYG,PuBu,PuBuGn,PuOr,PuRd,Purples,RdBu,RdGy,RdPu,RdYlBu,RdYlGn,Reds,Spectral,YlGn,YlGnBu,YlOrBr,YlOrRd,afmhot,autumn,binary,bone,brg,bwr,cool,copper,flag,gist_earth,gist_gray,gist_heat,gist_ncar,gist_rainbow,gist_stern,gist_yarg,gnuplot,gnuplot2,gray,hot,hsv,jet,ocean,pink,prism,rainbow,seismic,spectral,spring,summer,terrain,winter,bbcyr,bbcry,bcry}\n\
    --bottom_c BOTTOM_C   Color to use for cells below the minimum value of the\n\
    scale [default None meaning bottom color of the scale]\n--top_c TOP_C        \
    \ Color to use for cells below the maximum value of the\nscale [default None meaning\
    \ bottom color of the scale]\n--nan_c NAN_C         Color to use for nan cells\
    \ [default None]\n"
  type: long
  inputBinding:
    prefix: --dpi
- id: in_input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_image_file
  doc: "[OUTPUT_FILE], --out [OUTPUT_FILE]\nThe output image file [image on screen\
    \ of not\nspecified]"
  type: File
  outputBinding:
    glob: $(inputs.in_output_image_file)
- id: out_legend_file
  doc: "[LEGEND_FILE]\nThe output file for the legend of the provided\nmetadata"
  type: File
  outputBinding:
    glob: $(inputs.in_legend_file)
cwlVersion: v1.1
baseCommand:
- hclust2.py

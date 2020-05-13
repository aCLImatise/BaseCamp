class: CommandLineTool
id: hclust2.py.cwl
inputs:
- id: i
  doc: '[INPUT_FILE], --inp [INPUT_FILE], --in [INPUT_FILE] The input matrix'
  type: boolean
  inputBinding:
    prefix: -i
- id: o
  doc: '[OUTPUT_FILE], --out [OUTPUT_FILE] The output image file [image on screen
    of not specified]'
  type: boolean
  inputBinding:
    prefix: -o
- id: legend_file
  doc: '[LEGEND_FILE] The output file for the legend of the provided metadata'
  type: boolean
  inputBinding:
    prefix: --legend_file
- id: input_type
  doc: The input type can be a data matrix or distance matrix [default data_matrix]
  type: string
  inputBinding:
    prefix: --input_type
- id: out_table
  doc: Write processed data matrix to file
  type: string
  inputBinding:
    prefix: --out_table
- id: fname_row
  doc: row number containing the names of the features [default 0, specify -1 if no
    names are present in the matrix
  type: string
  inputBinding:
    prefix: --fname_row
- id: sname_row
  doc: column number containing the names of the samples [default 0, specify -1 if
    no names are present in the matrix
  type: string
  inputBinding:
    prefix: --sname_row
- id: metadata_rows
  doc: Row numbers to use as metadata[default None, meaning no metadata
  type: string
  inputBinding:
    prefix: --metadata_rows
- id: skip_rows
  doc: Row numbers to skip (0-indexed, comma separated) from the input file[default
    None, meaning no rows skipped
  type: string
  inputBinding:
    prefix: --skip_rows
- id: s_perc
  doc: Percentile of sample value distribution for sample selection
  type: string
  inputBinding:
    prefix: --sperc
- id: f_perc
  doc: Percentile of feature value distribution for sample selection
  type: string
  inputBinding:
    prefix: --fperc
- id: stop
  doc: Number of top samples to select (ordering based on percentile specified by
    --sperc)
  type: string
  inputBinding:
    prefix: --stop
- id: f_top
  doc: Number of top features to select (ordering based on percentile specified by
    --fperc)
  type: string
  inputBinding:
    prefix: --ftop
- id: def_na
  doc: Set the default value for missing values [default None which means no replacement]
  type: string
  inputBinding:
    prefix: --def_na
- id: f_dist_f
  doc: Distance function for features [default correlation]
  type: string
  inputBinding:
    prefix: --f_dist_f
- id: s_dist_f
  doc: Distance function for sample [default euclidean]
  type: string
  inputBinding:
    prefix: --s_dist_f
- id: load_dist_matrix_f
  doc: Load the distance matrix to be used for features [default None].
  type: string
  inputBinding:
    prefix: --load_dist_matrix_f
- id: load_dist_matrix_s
  doc: Load the distance matrix to be used for samples [default None].
  type: string
  inputBinding:
    prefix: --load_dist_matrix_s
- id: load_pickled_dist_matrix_f
  doc: Load the distance matrix to be used for features as previously saved as pickle
    file using hclust2 itself [default None].
  type: string
  inputBinding:
    prefix: --load_pickled_dist_matrix_f
- id: load_pickled_dist_matrix_s
  doc: Load the distance matrix to be used for samples as previously saved as pickle
    file using hclust2 itself [default None].
  type: string
  inputBinding:
    prefix: --load_pickled_dist_matrix_s
- id: save_pickled_dist_matrix_f
  doc: Save the distance matrix for features to file [default None].
  type: string
  inputBinding:
    prefix: --save_pickled_dist_matrix_f
- id: save_pickled_dist_matrix_s
  doc: Save the distance matrix for samples to file [default None].
  type: string
  inputBinding:
    prefix: --save_pickled_dist_matrix_s
- id: no_f_clustering
  doc: avoid clustering features
  type: boolean
  inputBinding:
    prefix: --no_fclustering
- id: no_plot_f_clustering
  doc: avoid plotting the feature dendrogram
  type: boolean
  inputBinding:
    prefix: --no_plot_fclustering
- id: no_s_clustering
  doc: avoid clustering samples
  type: boolean
  inputBinding:
    prefix: --no_sclustering
- id: no_plot_s_clustering
  doc: avoid plotting the sample dendrogram
  type: boolean
  inputBinding:
    prefix: --no_plot_sclustering
- id: f_linkage
  doc: Linkage method for feature clustering [default average]
  type: string
  inputBinding:
    prefix: --flinkage
- id: s_linkage
  doc: Linkage method for sample clustering [default average]
  type: string
  inputBinding:
    prefix: --slinkage
- id: bottom_c
  doc: Color to use for cells below the minimum value of the scale [default None meaning
    bottom color of the scale]
  type: string
  inputBinding:
    prefix: --bottom_c
- id: top_c
  doc: Color to use for cells below the maximum value of the scale [default None meaning
    bottom color of the scale]
  type: string
  inputBinding:
    prefix: --top_c
- id: nan_c
  doc: Color to use for nan cells [default None]
  type: string
  inputBinding:
    prefix: --nan_c
outputs: []
cwlVersion: v1.1
baseCommand:
- hclust2.py

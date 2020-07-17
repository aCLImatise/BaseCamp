version 1.0

task Hclust2.py {
  input {
    Boolean? _input_matrix
    Boolean? o
    Boolean? legend_file
    String? input_type
    String? out_table
    String? fname_row
    String? sname_row
    String? metadata_rows
    String? skip_rows
    String? s_perc
    String? f_perc
    String? stop
    String? f_top
    String? def_na
    String? f_dist_f
    String? s_dist_f
    String? load_dist_matrix_f
    String? load_dist_matrix_s
    String? load_pickled_dist_matrix_f
    String? load_pickled_dist_matrix_s
    String? save_pickled_dist_matrix_f
    String? save_pickled_dist_matrix_s
    Boolean? no_f_clustering
    Boolean? no_plot_f_clustering
    Boolean? no_s_clustering
    Boolean? no_plot_s_clustering
    String? f_linkage
    String? s_linkage
    String? bottom_c
    String? top_c
    String? nan_c
    String? input_file
    String? output_file
  }
  command <<<
    hclust2.py \
      ~{input_file} \
      ~{output_file} \
      ~{true="-i" false="" _input_matrix} \
      ~{true="-o" false="" o} \
      ~{true="--legend_file" false="" legend_file} \
      ~{if defined(input_type) then ("--input_type " +  '"' + input_type + '"') else ""} \
      ~{if defined(out_table) then ("--out_table " +  '"' + out_table + '"') else ""} \
      ~{if defined(fname_row) then ("--fname_row " +  '"' + fname_row + '"') else ""} \
      ~{if defined(sname_row) then ("--sname_row " +  '"' + sname_row + '"') else ""} \
      ~{if defined(metadata_rows) then ("--metadata_rows " +  '"' + metadata_rows + '"') else ""} \
      ~{if defined(skip_rows) then ("--skip_rows " +  '"' + skip_rows + '"') else ""} \
      ~{if defined(s_perc) then ("--sperc " +  '"' + s_perc + '"') else ""} \
      ~{if defined(f_perc) then ("--fperc " +  '"' + f_perc + '"') else ""} \
      ~{if defined(stop) then ("--stop " +  '"' + stop + '"') else ""} \
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
      ~{true="--no_fclustering" false="" no_f_clustering} \
      ~{true="--no_plot_fclustering" false="" no_plot_f_clustering} \
      ~{true="--no_sclustering" false="" no_s_clustering} \
      ~{true="--no_plot_sclustering" false="" no_plot_s_clustering} \
      ~{if defined(f_linkage) then ("--flinkage " +  '"' + f_linkage + '"') else ""} \
      ~{if defined(s_linkage) then ("--slinkage " +  '"' + s_linkage + '"') else ""} \
      ~{if defined(bottom_c) then ("--bottom_c " +  '"' + bottom_c + '"') else ""} \
      ~{if defined(top_c) then ("--top_c " +  '"' + top_c + '"') else ""} \
      ~{if defined(nan_c) then ("--nan_c " +  '"' + nan_c + '"') else ""}
  >>>
  parameter_meta {
    _input_matrix: "[INPUT_FILE], --inp [INPUT_FILE], --in [INPUT_FILE] The input matrix"
    o: "[OUTPUT_FILE], --out [OUTPUT_FILE] The output image file [image on screen of not specified]"
    legend_file: "[LEGEND_FILE] The output file for the legend of the provided metadata"
    input_type: "The input type can be a data matrix or distance matrix [default data_matrix]"
    out_table: "Write processed data matrix to file"
    fname_row: "row number containing the names of the features [default 0, specify -1 if no names are present in the matrix"
    sname_row: "column number containing the names of the samples [default 0, specify -1 if no names are present in the matrix"
    metadata_rows: "Row numbers to use as metadata[default None, meaning no metadata"
    skip_rows: "Row numbers to skip (0-indexed, comma separated) from the input file[default None, meaning no rows skipped"
    s_perc: "Percentile of sample value distribution for sample selection"
    f_perc: "Percentile of feature value distribution for sample selection"
    stop: "Number of top samples to select (ordering based on percentile specified by --sperc)"
    f_top: "Number of top features to select (ordering based on percentile specified by --fperc)"
    def_na: "Set the default value for missing values [default None which means no replacement]"
    f_dist_f: "Distance function for features [default correlation]"
    s_dist_f: "Distance function for sample [default euclidean]"
    load_dist_matrix_f: "Load the distance matrix to be used for features [default None]."
    load_dist_matrix_s: "Load the distance matrix to be used for samples [default None]."
    load_pickled_dist_matrix_f: "Load the distance matrix to be used for features as previously saved as pickle file using hclust2 itself [default None]."
    load_pickled_dist_matrix_s: "Load the distance matrix to be used for samples as previously saved as pickle file using hclust2 itself [default None]."
    save_pickled_dist_matrix_f: "Save the distance matrix for features to file [default None]."
    save_pickled_dist_matrix_s: "Save the distance matrix for samples to file [default None]."
    no_f_clustering: "avoid clustering features"
    no_plot_f_clustering: "avoid plotting the feature dendrogram"
    no_s_clustering: "avoid clustering samples"
    no_plot_s_clustering: "avoid plotting the sample dendrogram"
    f_linkage: "Linkage method for feature clustering [default average]"
    s_linkage: "Linkage method for sample clustering [default average]"
    bottom_c: "Color to use for cells below the minimum value of the scale [default None meaning bottom color of the scale]"
    top_c: "Color to use for cells below the maximum value of the scale [default None meaning bottom color of the scale]"
    nan_c: "Color to use for nan cells [default None]"
    input_file: ""
    output_file: ""
  }
}
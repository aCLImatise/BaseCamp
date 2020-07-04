version 1.0

task CbImportScanpy {
  input {
    Boolean? debug
    String? in_file
    Boolean? proc
    String? output_directory_required
    String? name
    String? html_dir
    String? port
    String? marker_field
    String? cluster_field
    Boolean? skip_matrix
    String in_filename
    String var_11
    String dataset_name
  }
  command <<<
    cbImportScanpy \
      ~{in_filename} \
      ~{var_11} \
      ~{dataset_name} \
      ~{true="--debug" false="" debug} \
      ~{if defined(in_file) then ("--inFile " +  '"' + in_file + '"') else ""} \
      ~{true="--proc" false="" proc} \
      ~{if defined(output_directory_required) then ("--outDir " +  '"' + output_directory_required + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(html_dir) then ("--htmlDir " +  '"' + html_dir + '"') else ""} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""} \
      ~{if defined(marker_field) then ("--markerField " +  '"' + marker_field + '"') else ""} \
      ~{if defined(cluster_field) then ("--clusterField " +  '"' + cluster_field + '"') else ""} \
      ~{true="--skipMatrix" false="" skip_matrix}
  >>>
  parameter_meta {
    debug: "show debug messages"
    in_file: "input .h5ad file. Required parameter"
    proc: "when exporting, do not use the raw input data, instead use the normalized and corrected matrix scanpy. This has no effect if the anndata.raw attribute is not used in the anndata object"
    output_directory_required: "Output directory. Required parameter"
    name: "Dataset name for generated cellbrowser.conf. If not specified, the last component of -o will be used."
    html_dir: "do not only convert to tab-sep files but also run cbBuild toconvert the data and add the dataset under htmlDir"
    port: "only with --htmlDir: start webserver on port to serve htmlDir"
    marker_field: "name of the marker genes field, default: rank_genes_groups"
    cluster_field: "if no marker genes are present, use this field to calculate them. Default is to try a list of common field names, like 'Cluster' or 'louvain' and a few others"
    skip_matrix: "do not convert the matrix, saves time if the same one has been exported before to the same directory"
    in_filename: ""
    var_11: ""
    dataset_name: ""
  }
}
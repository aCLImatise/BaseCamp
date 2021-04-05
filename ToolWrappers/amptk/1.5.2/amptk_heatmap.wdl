version 1.0

task AmptkHeatmap {
  input {
    Boolean? input_otu_table
    File? output_file_required
    Boolean? method
    Boolean? delimiter
    Boolean? format
    Boolean? font
    Boolean? color
    Boolean? fig_size
    Boolean? annotate
    Boolean? distance_metric
    Boolean? cluster_columns
    Boolean? cluster_method
    Boolean? scaling
    Boolean? yaxis_font_size
    Boolean? x_axis_font_size
    Boolean? normalize
    Boolean? normalize_counts
    Boolean? vmax
    Boolean? debug
    String arguments
  }
  command <<<
    amptk heatmap \
      ~{arguments} \
      ~{if (input_otu_table) then "--input" else ""} \
      ~{if (output_file_required) then "--output" else ""} \
      ~{if (method) then "--method" else ""} \
      ~{if (delimiter) then "--delimiter" else ""} \
      ~{if (format) then "--format" else ""} \
      ~{if (font) then "--font" else ""} \
      ~{if (color) then "--color" else ""} \
      ~{if (fig_size) then "--figsize" else ""} \
      ~{if (annotate) then "--annotate" else ""} \
      ~{if (distance_metric) then "--distance_metric" else ""} \
      ~{if (cluster_columns) then "--cluster_columns" else ""} \
      ~{if (cluster_method) then "--cluster_method" else ""} \
      ~{if (scaling) then "--scaling" else ""} \
      ~{if (yaxis_font_size) then "--yaxis_fontsize" else ""} \
      ~{if (x_axis_font_size) then "--xaxis_fontsize" else ""} \
      ~{if (normalize) then "--normalize" else ""} \
      ~{if (normalize_counts) then "--normalize_counts" else ""} \
      ~{if (vmax) then "--vmax" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/amptk:1.5.2--py_0"
  }
  parameter_meta {
    input_otu_table: "Input OTU table (Required)"
    output_file_required: "Output file (Required)"
    method: "Type of heatmap. Default: clustermap [clustermap,heatmap]"
    delimiter: "Delimiter of OTU table. Default: tsv [tsv,csv]"
    format: "Figure format. Default: pdf [pdf,jpg,svg,png]"
    font: "Font set. Default: arial"
    color: "Color Palette. Default: gist_gray_r"
    fig_size: "Figure size. Default: 2x8"
    annotate: "Annotate heatmap with values."
    distance_metric: "Distance metric to use for clustermap. Default: braycurtis"
    cluster_columns: "Cluster the columns (samples). Default: False [True,False]"
    cluster_method: "Clustering method for clustermap. Default: single [single,complete,average,weighted]"
    scaling: "Scale the data by row. Default: None [None, z_score, standard]"
    yaxis_font_size: "Y-Axis Font Size. Default: 6"
    x_axis_font_size: "X-Axis Font Size. Default: 6"
    normalize: "Normalize data based total, tsv file ID<tab>count"
    normalize_counts: "Value to normalize counts to, i.e. 100000"
    vmax: "Maximum value for heatmap coloration."
    debug: "Print pandas table on import to terminal"
    arguments: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_required = "${in_output_file_required}"
  }
}
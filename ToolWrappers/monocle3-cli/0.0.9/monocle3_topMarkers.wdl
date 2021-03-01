version 1.0

task Monocle3TopMarkers {
  input {
    Int? input_object_format
    String? output_table_format
    Boolean? introspective
    String? group_cells_by
    Int? genes_to_test_per_group
    Boolean? marker_sig_test
    Int? reference_cells
    Int? cores
    Float? filter_fraction_expression
    Int? top_n_markers
    File? plot_top_markers
    File? save_full_markers
    Boolean? verbose
    String input_object
    String output_table
  }
  command <<<
    monocle3 topMarkers \
      ~{input_object} \
      ~{output_table} \
      ~{if defined(input_object_format) then ("--input-object-format " +  '"' + input_object_format + '"') else ""} \
      ~{if defined(output_table_format) then ("--output-table-format " +  '"' + output_table_format + '"') else ""} \
      ~{if (introspective) then "--introspective" else ""} \
      ~{if defined(group_cells_by) then ("--group-cells-by " +  '"' + group_cells_by + '"') else ""} \
      ~{if defined(genes_to_test_per_group) then ("--genes-to-test-per-group " +  '"' + genes_to_test_per_group + '"') else ""} \
      ~{if (marker_sig_test) then "--marker-sig-test" else ""} \
      ~{if defined(reference_cells) then ("--reference-cells " +  '"' + reference_cells + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(filter_fraction_expression) then ("--filter-fraction-expression " +  '"' + filter_fraction_expression + '"') else ""} \
      ~{if defined(top_n_markers) then ("--top-n-markers " +  '"' + top_n_markers + '"') else ""} \
      ~{if defined(plot_top_markers) then ("--plot-top-markers " +  '"' + plot_top_markers + '"') else ""} \
      ~{if defined(save_full_markers) then ("--save-full-markers " +  '"' + save_full_markers + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_object_format: "Format of input object. [Default: cds3]"
    output_table_format: "Format of output table, choose from {tsv, csv}. [Default: tsv]"
    introspective: "Print introspective information of the output table."
    group_cells_by: "Cell groups, choose from \\\"cluster\\\", \\\"partition\\\", or any categorical variable in `colData(cds)`}. [Default: cluster]"
    genes_to_test_per_group: "Numeric, how many genes of the top ranked specific genes by Jenson-Shannon to do the more expensive regression test on. [Default: 25]"
    marker_sig_test: "A flag indicating whether to assess the discriminative power of each marker through logistic regression. Can be slow, consider disabling to speed up top_markers(). [Default: FALSE]"
    reference_cells: "If provided, top_markers will perform the marker significance test against a \\\"reference set\\\" of cells. Must be either a list of cell ids from colnames(cds) (comma separated), or a positive integer. If the latter, top_markers() will randomly select the specified number of reference cells. Accelerates the marker significance test at some cost in sensitivity."
    cores: "The number of cores to be used for marker testing. [Default: 1]"
    filter_fraction_expression: "Filters the markers test result by this fraction of expression [Default: 0.1]"
    top_n_markers: "The number of top marker genes to report in plots and in top markers list. [Default: 5]"
    plot_top_markers: "Save top marker by cell group plot to a file specified by this option."
    save_full_markers: "Save full marker table to a file specified by this option."
    verbose: "Emit verbose output."
    input_object: ""
    output_table: ""
  }
  output {
    File out_stdout = stdout()
  }
}
class: CommandLineTool
id: monocle3_topMarkers.cwl
inputs:
- id: in_input_object_format
  doc: 'Format of input object. [Default: cds3]'
  type: long
  inputBinding:
    prefix: --input-object-format
- id: in_output_table_format
  doc: 'Format of output table, choose from {tsv, csv}. [Default: tsv]'
  type: string
  inputBinding:
    prefix: --output-table-format
- id: in_introspective
  doc: Print introspective information of the output table.
  type: boolean
  inputBinding:
    prefix: --introspective
- id: in_group_cells_by
  doc: 'Cell groups, choose from "cluster", "partition", or any categorical variable
    in `colData(cds)`}. [Default: cluster]'
  type: string
  inputBinding:
    prefix: --group-cells-by
- id: in_genes_to_test_per_group
  doc: 'Numeric, how many genes of the top ranked specific genes by Jenson-Shannon
    to do the more expensive regression test on. [Default: 25]'
  type: long
  inputBinding:
    prefix: --genes-to-test-per-group
- id: in_marker_sig_test
  doc: 'A flag indicating whether to assess the discriminative power of each marker
    through logistic regression. Can be slow, consider disabling to speed up top_markers().
    [Default: FALSE]'
  type: boolean
  inputBinding:
    prefix: --marker-sig-test
- id: in_reference_cells
  doc: If provided, top_markers will perform the marker significance test against
    a "reference set" of cells. Must be either a list of cell ids from colnames(cds)
    (comma separated), or a positive integer. If the latter, top_markers() will randomly
    select the specified number of reference cells. Accelerates the marker significance
    test at some cost in sensitivity.
  type: long
  inputBinding:
    prefix: --reference-cells
- id: in_cores
  doc: 'The number of cores to be used for marker testing. [Default: 1]'
  type: long
  inputBinding:
    prefix: --cores
- id: in_filter_fraction_expression
  doc: 'Filters the markers test result by this fraction of expression [Default: 0.1]'
  type: double
  inputBinding:
    prefix: --filter-fraction-expression
- id: in_top_n_markers
  doc: 'The number of top marker genes to report in plots and in top markers list.
    [Default: 5]'
  type: long
  inputBinding:
    prefix: --top-n-markers
- id: in_plot_top_markers
  doc: Save top marker by cell group plot to a file specified by this option.
  type: File
  inputBinding:
    prefix: --plot-top-markers
- id: in_save_full_markers
  doc: Save full marker table to a file specified by this option.
  type: File
  inputBinding:
    prefix: --save-full-markers
- id: in_verbose
  doc: Emit verbose output.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_input_object
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_table
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- monocle3
- topMarkers

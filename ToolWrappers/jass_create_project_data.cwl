class: CommandLineTool
id: jass_create_project_data.cwl
inputs:
- id: in_phenotypes
  doc: "--worktable-path WORKTABLE_PATH [--keep-nans]\n--manhattan-plot-path MANHATTAN_PLOT_PATH\n\
    --quadrant-plot-path QUADRANT_PLOT_PATH\n[--significance-treshold SIGNIFICANCE_TRESHOLD]\n\
    [--post-filtering POST_FILTERING]\n[--custom-loadings CUSTOM_LOADINGS]\n[--omnibus\
    \ | --sumz | --fisher_test | --strategy STRATEGY]"
  type: string[]
  inputBinding:
    prefix: --phenotypes
- id: in_in_it_table_path
  doc: ''
  type: File
  inputBinding:
    prefix: --init-table-path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- jass
- create-project-data

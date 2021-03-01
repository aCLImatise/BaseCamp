class: CommandLineTool
id: jass_create_worktable.cwl
inputs:
- id: in_in_it_table_path
  doc: "path to the initial data table, default is the\nconfigured path (JASS_DATA_DIR/initTable.hdf5)"
  type: File?
  inputBinding:
    prefix: --init-table-path
- id: in_phenotypes
  doc: list of selected phenotypes
  type: string[]
  inputBinding:
    prefix: --phenotypes
- id: in_work_table_path
  doc: path to the worktable file to generate
  type: File?
  inputBinding:
    prefix: --worktable-path
- id: in_significance_treshold
  doc: threshold at which a p-value is considered significant
  type: string?
  inputBinding:
    prefix: --significance-treshold
- id: in_post_filtering
  doc: "If a filtering to remove outlier will be applied (in\nthis case the result\
    \ of SNPs considered aberant will\nnot appear in the worktable)"
  type: string?
  inputBinding:
    prefix: --post-filtering
- id: in_custom_loadings
  doc: "path toward a csv file containing custom loading for\nsumZ tests"
  type: File?
  inputBinding:
    prefix: --custom-loadings
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- jass
- create-worktable

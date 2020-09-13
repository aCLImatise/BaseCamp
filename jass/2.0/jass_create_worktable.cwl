class: CommandLineTool
id: ../../../jass_create_worktable.cwl
inputs:
- id: in_phenotypes
  doc: ''
  type: string[]
  inputBinding:
    prefix: --phenotypes
- id: in_work_table_path
  doc: ''
  type: File
  inputBinding:
    prefix: --worktable-path
- id: in_in_it_table_path
  doc: "path to the initial data table, default is the\nconfigured path (JASS_DATA_DIR/initTable.hdf5)"
  type: File
  inputBinding:
    prefix: --init-table-path
- id: in_significance_treshold
  doc: threshold at which a p-value is considered significant
  type: string
  inputBinding:
    prefix: --significance-treshold
- id: in_post_filtering
  doc: "If a filtering to remove outlier will be applied (in\nthis case the result\
    \ of SNPs considered aberant will\nnot appear in the worktable)"
  type: string
  inputBinding:
    prefix: --post-filtering
- id: in_custom_loadings
  doc: "path toward a csv file containing custom loading for\nsumZ tests"
  type: File
  inputBinding:
    prefix: --custom-loadings
- id: in_keep_nans
  doc: ''
  type: boolean
  inputBinding:
    prefix: --keep-nans
- id: in_omnibus
  doc: ''
  type: boolean
  inputBinding:
    prefix: --omnibus
- id: in_sum_z
  doc: ''
  type: boolean
  inputBinding:
    prefix: --sumz
- id: in_fisher_test
  doc: ''
  type: boolean
  inputBinding:
    prefix: --fisher_test
- id: in_strategy
  doc: ''
  type: string
  inputBinding:
    prefix: --strategy
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- jass
- create-worktable

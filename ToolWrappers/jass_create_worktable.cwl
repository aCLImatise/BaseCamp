class: CommandLineTool
id: jass_create_worktable.cwl
inputs:
- id: in_phenotypes
  doc: "--worktable-path WORKTABLE_PATH\n[--significance-treshold SIGNIFICANCE_TRESHOLD]\n\
    [--post-filtering POST_FILTERING]\n[--custom-loadings CUSTOM_LOADINGS] [--keep-nans]\n\
    [--omnibus | --sumz | --fisher_test | --strategy STRATEGY]"
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
- create-worktable

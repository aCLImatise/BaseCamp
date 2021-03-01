class: CommandLineTool
id: mimodd_delcall.cwl
inputs:
- id: in_index_files
  doc: "FILE [INDEX FILE ...]\npre-computed index files for all input files"
  type: File?
  inputBinding:
    prefix: --index-files
- id: in_ofile
  doc: "redirect the output to the specified file (default:\nstdout)"
  type: File?
  inputBinding:
    prefix: --ofile
- id: in_max_cov
  doc: "THRESHOLD\nmaximal coverage allowed at any site within an\nuncovered region\
    \ (default: 0)"
  type: long?
  inputBinding:
    prefix: --max-cov
- id: in_min_size
  doc: "THRESHOLD\nminimal size in nts for an uncovered region to be\nreported (default:\
    \ 100)"
  type: long?
  inputBinding:
    prefix: --min-size
- id: in_include_uncovered
  doc: "include uncovered regions in the output that did not\nget called as deletions"
  type: boolean?
  inputBinding:
    prefix: --include-uncovered
- id: in_group_by_id
  doc: "optional flag to control handling of multi-sample\ninput; if enabled, reads\
    \ from different read groups\nwill be treated strictly separate. If turned off,\
    \ read\ngroups with identical sample names are used together\nfor identifying\
    \ uncovered regions, but are still\ntreated separately for the prediction of deletions."
  type: boolean?
  inputBinding:
    prefix: --group-by-id
- id: in_verbose
  doc: verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_information
  doc: 'positional arguments:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_ofile
  doc: "redirect the output to the specified file (default:\nstdout)"
  type: File?
  outputBinding:
    glob: $(inputs.in_ofile)
hints: []
cwlVersion: v1.1
baseCommand:
- mimodd
- delcall

class: CommandLineTool
id: rbt_csv_report.cwl
inputs:
- id: in_formatter
  doc: "Configure a custom formatter function for each column by providing a file\n\
    containing a javascript object with csv column title as the key and a format\n\
    function as the value. More information on the formatting functions and how\n\
    to use them here: https://bootstrap-table.com/docs/api/column-\noptions/#formatter"
  type: File?
  inputBinding:
    prefix: --formatter
- id: in_rows_per_page
  doc: "Sets the numbers of rows of each table per page. Default is 100 [default:\n\
    100]"
  type: long?
  inputBinding:
    prefix: --rows-per-page
- id: in_separator
  doc: "Change the separator of the csv file to tab or anything else. Default is \"\
    ,\"\n[default: ,]"
  type: File?
  inputBinding:
    prefix: --separator
- id: in_sort_column
  doc: Column that the data should be sorted by
  type: string?
  inputBinding:
    prefix: --sort-column
- id: in_sort_order
  doc: "Order the data ascending or descending. Default is descending [default:\n\
    descending]  [possible values: ascending, descending]"
  type: string?
  inputBinding:
    prefix: --sort-order
- id: in_csv_path
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/rust-bio-tools:0.20.0--heda7bfa_0
cwlVersion: v1.1
baseCommand:
- rbt
- csv-report

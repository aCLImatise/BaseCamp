class: CommandLineTool
id: fastafunk_add_columns.cwl
inputs:
- id: in_verbose
  doc: Run with high verbosity (debug level logging)
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_log_file
  doc: "Log file to use (otherwise uses stdout, or stderr if\nout-fasta to stdout)"
  type: File?
  inputBinding:
    prefix: --log-file
- id: in_in_metadata
  doc: ONE CSV table of metadata
  type: File?
  inputBinding:
    prefix: --in-metadata
- id: in_in_data
  doc: "One CSV table of additional data. Must have --index-\ncolumn in common with\
    \ metadata"
  type: File?
  inputBinding:
    prefix: --in-data
- id: in_index_column
  doc: Column in the metadata files used to match rows
  type: string?
  inputBinding:
    prefix: --index-column
- id: in_join_on
  doc: Column in the data file used to match rows
  type: File?
  inputBinding:
    prefix: --join-on
- id: in_new_columns
  doc: "[<column> ...]\nColumn(s) in the in_data file to add to the metadata,\nif\
    \ not provided, all columns added"
  type: File?
  inputBinding:
    prefix: --new-columns
- id: in_out_metadata
  doc: A metadata file to write
  type: File?
  inputBinding:
    prefix: --out-metadata
- id: in_where_column
  doc: "=<regex> [<column>=<regex> ...]\nAdditional matches to columns e.g. if want\
    \ to rename\n"
  type: string?
  inputBinding:
    prefix: --where-column
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_log_file
  doc: "Log file to use (otherwise uses stdout, or stderr if\nout-fasta to stdout)"
  type: File?
  outputBinding:
    glob: $(inputs.in_log_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/fastafunk:0.0.9--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- fastafunk
- add_columns

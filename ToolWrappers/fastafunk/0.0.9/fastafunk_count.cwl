class: CommandLineTool
id: fastafunk_count.cwl
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
  doc: "[<filename> ...]\nOne or more CSV or TSV tables of metadata"
  type: File?
  inputBinding:
    prefix: --in-metadata
- id: in_group_column
  doc: "[<column> ...]\nColumn(s) in the metadata file to define groupings\n"
  type: File?
  inputBinding:
    prefix: --group-column
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
- count

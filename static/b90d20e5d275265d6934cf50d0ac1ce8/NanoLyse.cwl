class: CommandLineTool
id: NanoLyse.cwl
inputs:
- id: in_summary_in
  doc: Summary file to filter
  type: File?
  inputBinding:
    prefix: --summary_in
- id: in_summary_out
  doc: 'with --summary_in: name of output file.'
  type: File?
  inputBinding:
    prefix: --summary_out
- id: in_reference
  doc: Specify a fasta file against which to filter. Standard is DNA CS.
  type: File?
  inputBinding:
    prefix: --reference
- id: in_log_file
  doc: Specify the path and filename for the log file.
  type: File?
  inputBinding:
    prefix: --logfile
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_summary_out
  doc: 'with --summary_in: name of output file.'
  type: File?
  outputBinding:
    glob: $(inputs.in_summary_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/nanolyse:1.2.0--py_0
cwlVersion: v1.1
baseCommand:
- NanoLyse

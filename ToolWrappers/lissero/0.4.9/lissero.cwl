class: CommandLineTool
id: lissero.cwl
inputs:
- id: in_serotype_db
  doc: "[default: /usr/local/lib/python3.9/site-\npackages/lissero/db]"
  type: double?
  inputBinding:
    prefix: --serotype_db
- id: in_min_id
  doc: "Minimum percent identity to accept a match. [0-100]\n[default: 95.0]"
  type: double?
  inputBinding:
    prefix: --min_id
- id: in_min_cov
  doc: "Minimum coverage of the gene to accept a match.\n[0-100]  [default: 95.0]"
  type: double?
  inputBinding:
    prefix: --min_cov
- id: in_log_file
  doc: Save log to a file instead of printing to stderr
  type: File?
  inputBinding:
    prefix: --logfile
- id: in_fast_a_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/lissero:0.4.9--py_0
cwlVersion: v1.1
baseCommand:
- lissero

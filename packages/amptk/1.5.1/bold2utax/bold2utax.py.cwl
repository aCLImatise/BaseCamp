class: CommandLineTool
id: bold2utax.py.cwl
inputs:
- id: in_input
  doc: 'Bold data dump TSV format (default: None)'
  type: string?
  inputBinding:
    prefix: --input
- id: in_out
  doc: "Basename for UTAX formated FASTA output (default:\nNone)"
  type: string?
  inputBinding:
    prefix: --out
- id: in_cluster
  doc: 'Post processsing cluster (default: None)'
  type: string?
  inputBinding:
    prefix: --cluster
- id: in_drop_suppressed
  doc: 'Drop IDs if SUPPRESSED in header (default: False)'
  type: boolean?
  inputBinding:
    prefix: --drop_suppressed
- id: in_require_genbank
  doc: "Require output to have GenBank Accessions (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --require_genbank
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/amptk:1.5.1--py_1
cwlVersion: v1.1
baseCommand:
- bold2utax.py

class: CommandLineTool
id: hailctl_batch_list.cwl
inputs:
- id: in_query
  doc: see docs at https://batch.hail.is/batches
  type: string?
  inputBinding:
    prefix: --query
- id: in_limit
  doc: number of batches to return (default 50)
  type: long?
  inputBinding:
    prefix: --limit
- id: in_all
  doc: list all batches (overrides --limit)
  type: boolean?
  inputBinding:
    prefix: --all
- id: in_before
  doc: start listing before supplied id
  type: string?
  inputBinding:
    prefix: --before
- id: in_full
  doc: when output is tabular, print more information
  type: boolean?
  inputBinding:
    prefix: --full
- id: in_no_header
  doc: do not print a table header
  type: boolean?
  inputBinding:
    prefix: --no-header
- id: in_specify_format_yaml
  doc: "specify output format (json, yaml, csv, tsv, or any\ntabulate format)\n"
  type: string?
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hail:0.2.61--py36hf1ae8f4_1
cwlVersion: v1.1
baseCommand:
- hailctl
- batch
- list

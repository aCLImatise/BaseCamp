class: CommandLineTool
id: pysradb_gsm_to_gse.cwl
inputs:
- id: in_save_to
  doc: Save output to file
  type: File?
  inputBinding:
    prefix: --saveto
- id: in_detailed
  doc: "Output additional columns: [sample_accession (SRS),\nrun_accession (SRR),\
    \ sample_alias (GSM), run_alias (GSM_r)]"
  type: boolean?
  inputBinding:
    prefix: --detailed
- id: in_desc
  doc: Should sample_attribute be included
  type: boolean?
  inputBinding:
    prefix: --desc
- id: in_expand
  doc: Should sample_attribute be expanded
  type: boolean?
  inputBinding:
    prefix: --expand
- id: in_gsm_ids
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_save_to
  doc: Save output to file
  type: File?
  outputBinding:
    glob: $(inputs.in_save_to)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pysradb:1.0.1--py_0
cwlVersion: v1.1
baseCommand:
- pysradb
- gsm-to-gse

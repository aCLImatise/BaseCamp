class: CommandLineTool
id: ../../../phizz_query.cwl
inputs:
- id: in_config
  doc: ''
  type: File
  inputBinding:
    prefix: --config
- id: in_hpo_term
  doc: Specify a hpo term
  type: string
  inputBinding:
    prefix: --hpo_term
- id: in_mim_term
  doc: Specify a omim id
  type: string
  inputBinding:
    prefix: --mim_term
- id: in_outfile
  doc: Specify path to outfile
  type: File
  inputBinding:
    prefix: --outfile
- id: in_to_json
  doc: If output should be in json format
  type: boolean
  inputBinding:
    prefix: --to_json
- id: in_chrom
  doc: The chromosome
  type: string
  inputBinding:
    prefix: --chrom
- id: in_start
  doc: ''
  type: long
  inputBinding:
    prefix: --start
- id: in_stop
  doc: ''
  type: long
  inputBinding:
    prefix: --stop
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- phizz
- query

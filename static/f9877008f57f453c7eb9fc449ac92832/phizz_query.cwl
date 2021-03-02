class: CommandLineTool
id: phizz_query.cwl
inputs:
- id: in_hpo_term
  doc: Specify a hpo term
  type: File?
  inputBinding:
    prefix: --hpo_term
- id: in_mim_term
  doc: Specify a omim id
  type: string?
  inputBinding:
    prefix: --mim_term
- id: in_outfile
  doc: Specify path to outfile
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_to_json
  doc: If output should be in json format
  type: boolean?
  inputBinding:
    prefix: --to_json
- id: in_chrom
  doc: The chromosome
  type: string?
  inputBinding:
    prefix: --chrom
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- phizz
- query

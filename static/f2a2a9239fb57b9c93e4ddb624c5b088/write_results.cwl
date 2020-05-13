class: CommandLineTool
id: write_results.py.cwl
inputs:
- id: dataset_name
  doc: Name identifying dataset
  type: string
  inputBinding:
    position: 0
- id: tree_file
  doc: File containing sampled trees
  type: string
  inputBinding:
    position: 1
- id: tree_summary_output
  doc: Output file for JSON-formatted tree summaries
  type: string
  inputBinding:
    position: 2
- id: mut_list_output
  doc: Output file for JSON-formatted list of mutations
  type: string
  inputBinding:
    position: 3
- id: mut_ass_output
  doc: Output file for JSON-formatted list of SSMs and CNVs assigned to each subclone
  type: string
  inputBinding:
    position: 4
- id: include_ssm_names
  doc: 'Include SSM names in output (which may be sensitive data) (default: False)'
  type: boolean
  inputBinding:
    prefix: --include-ssm-names
- id: min_ssms
  doc: 'Minimum number or percent of SSMs to retain a subclone (default: 0.01)'
  type: long
  inputBinding:
    prefix: --min-ssms
outputs: []
cwlVersion: v1.1
baseCommand:
- write_results.py

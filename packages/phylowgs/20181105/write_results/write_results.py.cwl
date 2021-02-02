class: CommandLineTool
id: write_results.py.cwl
inputs:
- id: in_include_ssm_names
  doc: "Include SSM names in output (which may be sensitive\ndata) (default: False)"
  type: boolean
  inputBinding:
    prefix: --include-ssm-names
- id: in_min_ssms
  doc: "Minimum number or percent of SSMs to retain a subclone\n(default: 0.01)\n"
  type: long
  inputBinding:
    prefix: --min-ssms
- id: in_dataset_name
  doc: Name identifying dataset
  type: string
  inputBinding:
    position: 0
- id: in_tree_file
  doc: File containing sampled trees
  type: string
  inputBinding:
    position: 1
- id: in_tree_summary_output
  doc: Output file for JSON-formatted tree summaries
  type: string
  inputBinding:
    position: 2
- id: in_mut_list_output
  doc: Output file for JSON-formatted list of mutations
  type: string
  inputBinding:
    position: 3
- id: in_mut_ass_output
  doc: "Output file for JSON-formatted list of SSMs and CNVs\nassigned to each subclone"
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- write_results.py

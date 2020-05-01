#!/usr/bin/env cwl-runner

baseCommand:
- write_results.py
class: CommandLineTool
cwlVersion: v1.0
id: write_results.py
inputs:
- doc: Name identifying dataset
  id: dataset_name
  inputBinding:
    position: 0
  type: string
- doc: File containing sampled trees
  id: tree_file
  inputBinding:
    position: 1
  type: string
- doc: Output file for JSON-formatted tree summaries
  id: tree_summary_output
  inputBinding:
    position: 2
  type: string
- doc: Output file for JSON-formatted list of mutations
  id: mut_list_output
  inputBinding:
    position: 3
  type: string
- doc: Output file for JSON-formatted list of SSMs and CNVs assigned to each subclone
  id: mut_ass_output
  inputBinding:
    position: 4
  type: string
- doc: 'Include SSM names in output (which may be sensitive data) (default: False)'
  id: include_ssm_names
  inputBinding:
    prefix: --include-ssm-names
  type: boolean
- doc: 'Minimum number or percent of SSMs to retain a subclone (default: 0.01)'
  id: min_ssms
  inputBinding:
    prefix: --min-ssms
  type: long

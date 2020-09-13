class: CommandLineTool
id: ../../../assign_taxonomy_by_blast_result.py.cwl
inputs:
- id: in_rep_set_fp
  doc: The set of representative sequences.
  type: string
  inputBinding:
    prefix: --rep_set_fp
- id: in_path_file_mapping
  doc: "Path to tab-delimited file mapping sequences to\nassigned taxonomy."
  type: File
  inputBinding:
    prefix: --id_to_taxonomy_fp
- id: in_assigned_taxonomy_fp
  doc: "The path to the result file. By default outputs to\nassigned_taxonomy.txt"
  type: File
  inputBinding:
    prefix: --assigned_taxonomy_fp
- id: in_verbose
  doc: ''
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_var_4
  doc: '[-o ASSIGNED_TAXONOMY_FP] [-v]'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- assign_taxonomy_by_blast_result.py

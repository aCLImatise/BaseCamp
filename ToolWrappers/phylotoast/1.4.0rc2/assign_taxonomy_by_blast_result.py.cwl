class: CommandLineTool
id: assign_taxonomy_by_blast_result.py.cwl
inputs:
- id: in_rep_set_fp
  doc: The set of representative sequences.
  type: string?
  inputBinding:
    prefix: --rep_set_fp
- id: in_id_to_taxonomy_fp
  doc: "Path to tab-delimited file mapping sequences to\nassigned taxonomy."
  type: File?
  inputBinding:
    prefix: --id_to_taxonomy_fp
- id: in_assigned_taxonomy_fp
  doc: "The path to the result file. By default outputs to\nassigned_taxonomy.txt"
  type: File?
  inputBinding:
    prefix: --assigned_taxonomy_fp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- assign_taxonomy_by_blast_result.py

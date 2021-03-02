class: CommandLineTool
id: compare_genomes_dnadiff.py.cwl
inputs:
- id: in_save_pickled_results
  doc: Save pickled results in this file (None).
  type: File?
  inputBinding:
    prefix: -p
- id: in_save_dnadiff_report
  doc: Save dnadiff report in this file (None).
  type: File?
  inputBinding:
    prefix: -r
- id: in_use_working_directory
  doc: "Use this working directory instead of a temporary\ndirectory (None)."
  type: Directory?
  inputBinding:
    prefix: -d
- id: in_keep_dnadiff_result
  doc: Keep dnadiff result files (False).
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_print_dnadiff_output
  doc: Print out dnadiff output (False).
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_reference_fast_a
  doc: Reference fasta.
  type: string
  inputBinding:
    position: 0
- id: in_target_fast_a
  doc: Target fasta.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- compare_genomes_dnadiff.py

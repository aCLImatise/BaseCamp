class: CommandLineTool
id: ../../../compare_genomes_dnadiff.py.cwl
inputs:
- id: save_pickled_results
  doc: Save pickled results in this file (None).
  type: string
  inputBinding:
    prefix: -p
- id: save_dnadiff_report
  doc: Save dnadiff report in this file (None).
  type: string
  inputBinding:
    prefix: -r
- id: use_working_directory
  doc: Use this working directory instead of a temporary directory (None).
  type: string
  inputBinding:
    prefix: -d
- id: keep_dnadiff_result
  doc: Keep dnadiff result files (False).
  type: boolean
  inputBinding:
    prefix: -k
- id: print_dnadiff_output
  doc: Print out dnadiff output (False).
  type: boolean
  inputBinding:
    prefix: -v
- id: reference_fast_a
  doc: Reference fasta.
  type: string
  inputBinding:
    position: 0
- id: target_fast_a
  doc: Target fasta.
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- compare_genomes_dnadiff.py

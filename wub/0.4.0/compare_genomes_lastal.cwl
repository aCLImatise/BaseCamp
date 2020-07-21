class: CommandLineTool
id: ../../../compare_genomes_lastal.py.cwl
inputs:
- id: save_pickled_results
  doc: Save pickled results in this file (None).
  type: string
  inputBinding:
    prefix: -p
- id: parameters_passed_lastal
  doc: Parameters passed to lastal in the <arg>:value,... format (a:1,b:1).
  type: string
  inputBinding:
    prefix: -l
- id: save_details_lastal
  doc: Save details of lastal alignment in this tab-separated file (None).
  type: string
  inputBinding:
    prefix: -t
- id: filter_best_alignment
  doc: Do *not* filter for best alignment per query.
  type: boolean
  inputBinding:
    prefix: -f
- id: report_alignment_details
  doc: Report with alignment details plot (None).
  type: string
  inputBinding:
    prefix: -r
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
- compare_genomes_lastal.py

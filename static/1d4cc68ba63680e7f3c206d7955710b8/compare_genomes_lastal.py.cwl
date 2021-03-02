class: CommandLineTool
id: compare_genomes_lastal.py.cwl
inputs:
- id: in_save_pickled_results
  doc: Save pickled results in this file (None).
  type: File?
  inputBinding:
    prefix: -p
- id: in_parameters_passed_lastal
  doc: "Parameters passed to lastal in the <arg>:value,... format\n(a:1,b:1)."
  type: long?
  inputBinding:
    prefix: -l
- id: in_save_details_tabseparatedfile
  doc: "Save details of lastal alignment in this tab-separated\nfile (None)."
  type: File?
  inputBinding:
    prefix: -t
- id: in_filter_best_alignment
  doc: Do *not* filter for best alignment per query.
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_report_plot_none
  doc: Report with alignment details plot (None).
  type: string?
  inputBinding:
    prefix: -r
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
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- compare_genomes_lastal.py

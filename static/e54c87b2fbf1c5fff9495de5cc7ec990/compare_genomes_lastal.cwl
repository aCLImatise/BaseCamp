class: CommandLineTool
id: compare_genomes_lastal.py.cwl
inputs:
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
- id: p
  doc: Save pickled results in this file (None).
  type: string
  inputBinding:
    prefix: -p
- id: l
  doc: Parameters passed to lastal in the <arg>:value,... format (a:1,b:1).
  type: string
  inputBinding:
    prefix: -l
- id: t
  doc: Save details of lastal alignment in this tab-separated file (None).
  type: string
  inputBinding:
    prefix: -t
- id: f
  doc: Do *not* filter for best alignment per query.
  type: boolean
  inputBinding:
    prefix: -f
- id: r
  doc: Report with alignment details plot (None).
  type: string
  inputBinding:
    prefix: -r
outputs: []
cwlVersion: v1.1
baseCommand:
- compare_genomes_lastal.py

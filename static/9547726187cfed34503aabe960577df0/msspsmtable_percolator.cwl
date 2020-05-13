class: CommandLineTool
id: msspsmtable_percolator.cwl
inputs:
- id: i
  doc: Multiple input files of {} format
  type: string[]
  inputBinding:
    prefix: -i
- id: d
  doc: Directory to output in
  type: string
  inputBinding:
    prefix: -d
- id: o
  doc: Output file
  type: string
  inputBinding:
    prefix: -o
- id: mz_ids
  doc: MzIdentML output files belonging to PSM table TSV files, use same order as
    for TSVs
  type: string[]
  inputBinding:
    prefix: --mzids
- id: per_co
  doc: Percolator XML output file
  type: string
  inputBinding:
    prefix: --perco
outputs: []
cwlVersion: v1.1
baseCommand:
- msspsmtable
- percolator

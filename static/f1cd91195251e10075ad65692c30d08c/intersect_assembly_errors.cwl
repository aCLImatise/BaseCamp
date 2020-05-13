class: CommandLineTool
id: intersect_assembly_errors.cwl
inputs:
- id: r
  doc: reference, should be a fasta file. If correspondng bwa indices do not exist
    they will be created. (required).
  type: boolean
  inputBinding:
    prefix: -r
- id: i
  doc: fasta input assemblies (required).
  type: boolean
  inputBinding:
    prefix: -i
- id: t
  doc: 'alignment threads (default: 1).'
  type: boolean
  inputBinding:
    prefix: -t
- id: o
  doc: 'output directory (default: compare_assm).'
  type: boolean
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- intersect_assembly_errors

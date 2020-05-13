class: CommandLineTool
id: funannotate_util_outgroups.cwl
inputs:
- id: out_groups
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: arguments
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: input
  doc: 'Proteome multi-fasta file. Required. '
  type: boolean
  inputBinding:
    prefix: --input
- id: species
  doc: Species name for adding a species. Required.
  type: boolean
  inputBinding:
    prefix: --species
- id: busco_db
  doc: BUSCO db to use. Default. dikarya
  type: boolean
  inputBinding:
    prefix: --busco_db
- id: cpus
  doc: Number of CPUs to use for BUSCO search.
  type: boolean
  inputBinding:
    prefix: --cpus
- id: database
  doc: 'Path to funannotate database. Default: $FUNANNOTATE_DB'
  type: boolean
  inputBinding:
    prefix: --database
outputs: []
cwlVersion: v1.1
baseCommand:
- funannotate
- util
- outgroups

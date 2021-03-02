class: CommandLineTool
id: funannotate_outgroups.cwl
inputs:
- id: in_input
  doc: Proteome multi-fasta file. Required.
  type: boolean?
  inputBinding:
    prefix: --input
- id: in_species
  doc: Species name for adding a species. Required.
  type: boolean?
  inputBinding:
    prefix: --species
- id: in_busco_db
  doc: BUSCO db to use. Default. dikarya
  type: boolean?
  inputBinding:
    prefix: --busco_db
- id: in_cpus
  doc: Number of CPUs to use for BUSCO search.
  type: boolean?
  inputBinding:
    prefix: --cpus
- id: in_database
  doc: 'Path to funannotate database. Default: $FUNANNOTATE_DB'
  type: boolean?
  inputBinding:
    prefix: --database
- id: in_arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/funannotate:1.8.3--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- funannotate
- outgroups

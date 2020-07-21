class: CommandLineTool
id: ../../../ananse_binding.cwl
inputs:
- id: enhancers
  doc: BED file with RPKM on the 4th column
  type: File
  inputBinding:
    prefix: --enhancers
- id: output
  doc: Output file
  type: File
  inputBinding:
    prefix: --output
- id: genome
  doc: Genome
  type: string
  inputBinding:
    prefix: --genome
- id: pfm_file
  doc: PFM file with motifs
  type: File
  inputBinding:
    prefix: --pfmfile
- id: n_core
  doc: Number of core used
  type: string
  inputBinding:
    prefix: --ncore
- id: include_not_fs
  doc: Include or exclude noTFs from database. By default no tfs are exclude.
  type: boolean
  inputBinding:
    prefix: --include-notfs
- id: un_remove_curated
  doc: Include or exclude noTFs from database. By default no tfs are exclude.
  type: boolean
  inputBinding:
    prefix: --unremove-curated
- id: an_anse
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: subcommand
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: binding
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- ananse
- binding

class: CommandLineTool
id: genomepy_install.cwl
inputs:
- id: genome_dir
  doc: genome directory
  type: string
  inputBinding:
    prefix: --genome_dir
- id: local_name
  doc: custom name
  type: string
  inputBinding:
    prefix: --localname
- id: mask
  doc: 'hard/soft/no mask (default: soft)'
  type: string
  inputBinding:
    prefix: --mask
- id: regex
  doc: regex to filter sequences
  type: string
  inputBinding:
    prefix: --regex
- id: no_match
  doc: select sequences that *don't* match regex
  type: boolean
  inputBinding:
    prefix: --no-match
- id: b_gzip
  doc: bgzip genome
  type: boolean
  inputBinding:
    prefix: --bgzip
- id: annotation
  doc: download annotation
  type: boolean
  inputBinding:
    prefix: --annotation
- id: force
  doc: overwrite existing files
  type: boolean
  inputBinding:
    prefix: --force
- id: ensembl_top_level
  doc: always download toplevel-genome
  type: boolean
  inputBinding:
    prefix: --ensembl-toplevel
- id: ensembl_version
  doc: select release version
  type: long
  inputBinding:
    prefix: --ensembl-version
outputs: []
cwlVersion: v1.1
baseCommand:
- genomepy
- install

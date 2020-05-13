class: CommandLineTool
id: CAT_prepare.cwl
inputs:
- id: fresh
  doc: Start with a fresh database.
  type: boolean
  inputBinding:
    prefix: --fresh
- id: existing
  doc: Start with an existing database. CAT prepare will search the supplied database
    and taxonomy folders and only construct files that do not exist yet.
  type: boolean
  inputBinding:
    prefix: --existing
- id: d
  doc: ', --database_folder  Name of folder to which database files will be written
    (default: {date}_CAT_database).'
  type: boolean
  inputBinding:
    prefix: -d
- id: t
  doc: ', --taxonomy_folder  Name of folder to which taxonomy files will be downloaded
    (default: {date}_taxonomy).'
  type: boolean
  inputBinding:
    prefix: -t
- id: path_to_diamond
  doc: Path to DIAMOND binaries. Please supply if CAT prepare can not find DIAMOND.
  type: boolean
  inputBinding:
    prefix: --path_to_diamond
- id: quiet
  doc: Suppress verbosity.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: no_log
  doc: Suppress log file.
  type: boolean
  inputBinding:
    prefix: --no_log
- id: n
  doc: ', --nproc          Number of cores to deploy by DIAMOND makedb (default: maximum).'
  type: boolean
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- CAT
- prepare

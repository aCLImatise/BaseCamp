class: CommandLineTool
id: flextaxd.cwl
inputs:
- id: db
  doc: ', --database      Custom taxonomy sqlite3 database file (fullpath)'
  type: boolean
  inputBinding:
    prefix: -db
- id: o
  doc: ', --outdir         Output directory'
  type: boolean
  inputBinding:
    prefix: -o
- id: dump
  doc: Write database to names.dmp and nodes.dmp
  type: boolean
  inputBinding:
    prefix: --dump
- id: dump_mini
  doc: Dump minimal file with tab as separator
  type: boolean
  inputBinding:
    prefix: --dump_mini
- id: force
  doc: use when script is implemented in pipeline to avoid security questions on overwrite!
  type: boolean
  inputBinding:
    prefix: --force
- id: tf
  doc: ', --taxonomy_file  Taxonomy source file'
  type: boolean
  inputBinding:
    prefix: -tf
- id: tt
  doc: ', --taxonomy_type  Source format of taxonomy input file (NCBI,CanSNPer,QIIME)'
  type: boolean
  inputBinding:
    prefix: -tt
- id: taxid_base
  doc: The base for internal taxonomy ID numbers, when using NCBI as base select base
    at minimum 3000000 (default = 1)
  type: boolean
  inputBinding:
    prefix: --taxid_base
- id: mf
  doc: ', --mod_file      File contaning modifications parent,child,(taxonomy level)'
  type: boolean
  inputBinding:
    prefix: -mf
- id: md
  doc: ', --mod_database  Database file containing modifications'
  type: boolean
  inputBinding:
    prefix: -md
- id: gt
  doc: ', --genomeid2taxid  File that lists which node a genome should be assigned
    to'
  type: boolean
  inputBinding:
    prefix: -gt
- id: gp
  doc: ', --genomes_path  Path to genome folder is required when using NCBI_taxonomy
    as source'
  type: boolean
  inputBinding:
    prefix: -gp
- id: p
  doc: ', --parent         Parent from which to add (replace see below) branch'
  type: boolean
  inputBinding:
    prefix: -p
- id: replace
  doc: Add if existing children of parents should be removed!
  type: boolean
  inputBinding:
    prefix: --replace
- id: db_program
  doc: Adjust output file to certain output specifications [kraken2, krakenuniq, ganon,
    centrifuge]
  type: boolean
  inputBinding:
    prefix: --dbprogram
- id: dump_prefix
  doc: change dump prefix reqires two names default(names,nodes)
  type: boolean
  inputBinding:
    prefix: --dump_prefix
- id: dump_sep
  doc: Set output separator default(NCBI) also adds extra trailing columns for kraken
  type: boolean
  inputBinding:
    prefix: --dump_sep
- id: dump_descriptions
  doc: Dump description names instead of database integers
  type: boolean
  inputBinding:
    prefix: --dump_descriptions
- id: logs
  doc: Specify log directory
  type: boolean
  inputBinding:
    prefix: --logs
- id: verbose
  doc: Verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: debug
  doc: Debug output
  type: boolean
  inputBinding:
    prefix: --debug
- id: supress
  doc: Supress warnings
  type: boolean
  inputBinding:
    prefix: --supress
- id: quiet
  doc: Don´t show logging messages in terminal!
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- flextaxd

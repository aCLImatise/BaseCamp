#!/usr/bin/env cwl-runner

baseCommand:
- flextaxd
class: CommandLineTool
cwlVersion: v1.0
id: flextaxd
inputs:
- doc: ', --database      Custom taxonomy sqlite3 database file (fullpath)'
  id: db
  inputBinding:
    prefix: -db
  type: boolean
- doc: ', --outdir         Output directory'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: Write database to names.dmp and nodes.dmp
  id: dump
  inputBinding:
    prefix: --dump
  type: boolean
- doc: Dump minimal file with tab as separator
  id: dump_mini
  inputBinding:
    prefix: --dump_mini
  type: boolean
- doc: use when script is implemented in pipeline to avoid security questions on overwrite!
  id: force
  inputBinding:
    prefix: --force
  type: boolean
- doc: ', --taxonomy_file  Taxonomy source file'
  id: tf
  inputBinding:
    prefix: -tf
  type: boolean
- doc: ', --taxonomy_type  Source format of taxonomy input file (NCBI,CanSNPer,QIIME)'
  id: tt
  inputBinding:
    prefix: -tt
  type: boolean
- doc: The base for internal taxonomy ID numbers, when using NCBI as base select base
    at minimum 3000000 (default = 1)
  id: taxid_base
  inputBinding:
    prefix: --taxid_base
  type: boolean
- doc: ', --mod_file      File contaning modifications parent,child,(taxonomy level)'
  id: mf
  inputBinding:
    prefix: -mf
  type: boolean
- doc: ', --mod_database  Database file containing modifications'
  id: md
  inputBinding:
    prefix: -md
  type: boolean
- doc: ', --genomeid2taxid  File that lists which node a genome should be assigned
    to'
  id: gt
  inputBinding:
    prefix: -gt
  type: boolean
- doc: ', --genomes_path  Path to genome folder is required when using NCBI_taxonomy
    as source'
  id: gp
  inputBinding:
    prefix: -gp
  type: boolean
- doc: ', --parent         Parent from which to add (replace see below) branch'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: Add if existing children of parents should be removed!
  id: replace
  inputBinding:
    prefix: --replace
  type: boolean
- doc: Adjust output file to certain output specifications [kraken2, krakenuniq, ganon,
    centrifuge]
  id: db_program
  inputBinding:
    prefix: --dbprogram
  type: boolean
- doc: change dump prefix reqires two names default(names,nodes)
  id: dump_prefix
  inputBinding:
    prefix: --dump_prefix
  type: boolean
- doc: Set output separator default(NCBI) also adds extra trailing columns for kraken
  id: dump_sep
  inputBinding:
    prefix: --dump_sep
  type: boolean
- doc: Dump description names instead of database integers
  id: dump_descriptions
  inputBinding:
    prefix: --dump_descriptions
  type: boolean
- doc: Specify log directory
  id: logs
  inputBinding:
    prefix: --logs
  type: boolean
- doc: Verbose output
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Debug output
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
- doc: Supress warnings
  id: supress
  inputBinding:
    prefix: --supress
  type: boolean
- doc: "Don\xB4t show logging messages in terminal!"
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean

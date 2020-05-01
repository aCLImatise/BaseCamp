#!/usr/bin/env cwl-runner

baseCommand:
- flextaxd-create
class: CommandLineTool
cwlVersion: v1.0
id: flextaxd-create
inputs:
- doc: ', --outdir      Output directory (same directory as custom_taxonomy_databases
    dump)'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: ', --database   Custom taxonomy sqlite3 database file'
  id: db
  inputBinding:
    prefix: -db
  type: boolean
- doc: Select one of the supported programs [kraken2, krakenuniq, ganon]
  id: db_program
  inputBinding:
    prefix: --dbprogram
  type: boolean
- doc: path to genomes
  id: genomes_path
  inputBinding:
    prefix: --genomes_path
  type: boolean
- doc: database directory (fullpath)
  id: db_name
  inputBinding:
    prefix: --db_name
  type: boolean
- doc: Start create db after loading databases
  id: create_db
  inputBinding:
    prefix: --create_db
  type: boolean
- doc: Add extra params to create command (supports kraken*)
  id: params
  inputBinding:
    prefix: --params
  type: boolean
- doc: test database structure, only use 100 seqs
  id: test
  inputBinding:
    prefix: --test
  type: boolean
- doc: ', --processes   Use multiple cores'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: Keep temporary files
  id: keep
  inputBinding:
    prefix: --keep
  type: boolean
- doc: Do not include genomes within this taxonomy (child tree) in the database (works
    for kraken)
  id: skip
  inputBinding:
    prefix: --skip
  type: boolean
- doc: Specify log directory
  id: log
  inputBinding:
    prefix: --log
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

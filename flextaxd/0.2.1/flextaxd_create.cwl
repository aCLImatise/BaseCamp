class: CommandLineTool
id: flextaxd_create.cwl
inputs:
- id: o
  doc: ', --outdir      Output directory (same directory as custom_taxonomy_databases
    dump)'
  type: boolean
  inputBinding:
    prefix: -o
- id: db
  doc: ', --database   Custom taxonomy sqlite3 database file'
  type: boolean
  inputBinding:
    prefix: -db
- id: db_program
  doc: Select one of the supported programs [kraken2, krakenuniq, ganon]
  type: boolean
  inputBinding:
    prefix: --dbprogram
- id: genomes_path
  doc: path to genomes
  type: boolean
  inputBinding:
    prefix: --genomes_path
- id: db_name
  doc: database directory (fullpath)
  type: boolean
  inputBinding:
    prefix: --db_name
- id: create_db
  doc: Start create db after loading databases
  type: boolean
  inputBinding:
    prefix: --create_db
- id: params
  doc: Add extra params to create command (supports kraken*)
  type: boolean
  inputBinding:
    prefix: --params
- id: test
  doc: test database structure, only use 100 seqs
  type: boolean
  inputBinding:
    prefix: --test
- id: p
  doc: ', --processes   Use multiple cores'
  type: boolean
  inputBinding:
    prefix: -p
- id: keep
  doc: Keep temporary files
  type: boolean
  inputBinding:
    prefix: --keep
- id: skip
  doc: Do not include genomes within this taxonomy (child tree) in the database (works
    for kraken)
  type: boolean
  inputBinding:
    prefix: --skip
- id: log
  doc: Specify log directory
  type: boolean
  inputBinding:
    prefix: --log
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
outputs: []
cwlVersion: v1.1
baseCommand:
- flextaxd-create

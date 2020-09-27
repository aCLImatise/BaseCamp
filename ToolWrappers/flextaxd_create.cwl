class: CommandLineTool
id: flextaxd_create.cwl
inputs:
- id: in__outdir_output
  doc: ", --outdir      Output directory (same directory as\ncustom_taxonomy_databases\
    \ dump)"
  type: Directory
  inputBinding:
    prefix: -o
- id: in_db
  doc: ', --database   Custom taxonomy sqlite3 database file'
  type: boolean
  inputBinding:
    prefix: -db
- id: in_db_program
  doc: "Select one of the supported programs [kraken2,\nkrakenuniq, ganon]"
  type: boolean
  inputBinding:
    prefix: --dbprogram
- id: in_genomes_path
  doc: path to genomes
  type: boolean
  inputBinding:
    prefix: --genomes_path
- id: in_db_name
  doc: database directory (fullpath)
  type: boolean
  inputBinding:
    prefix: --db_name
- id: in_create_db
  doc: Start create db after loading databases
  type: boolean
  inputBinding:
    prefix: --create_db
- id: in_params
  doc: Add extra params to create command (supports kraken*)
  type: boolean
  inputBinding:
    prefix: --params
- id: in_test
  doc: test database structure, only use 100 seqs
  type: boolean
  inputBinding:
    prefix: --test
- id: in__processes_use
  doc: ', --processes   Use multiple cores'
  type: boolean
  inputBinding:
    prefix: -p
- id: in_keep
  doc: Keep temporary files
  type: boolean
  inputBinding:
    prefix: --keep
- id: in_skip
  doc: "Do not include genomes within this taxonomy (child tree)\nin the database\
    \ (works for kraken)"
  type: boolean
  inputBinding:
    prefix: --skip
- id: in_log
  doc: Specify log directory
  type: boolean
  inputBinding:
    prefix: --log
- id: in_verbose
  doc: Verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_debug
  doc: Debug output
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_supress
  doc: Supress warnings
  type: boolean
  inputBinding:
    prefix: --supress
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__outdir_output
  doc: ", --outdir      Output directory (same directory as\ncustom_taxonomy_databases\
    \ dump)"
  type: Directory
  outputBinding:
    glob: $(inputs.in__outdir_output)
cwlVersion: v1.1
baseCommand:
- flextaxd-create

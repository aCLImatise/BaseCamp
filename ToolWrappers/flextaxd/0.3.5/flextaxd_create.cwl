class: CommandLineTool
id: flextaxd_create.cwl
inputs:
- id: in_outdir
  doc: "Output directory (same directory as\ncustom_taxonomy_databases dump)"
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_database
  doc: Custom taxonomy sqlite3 database file
  type: boolean?
  inputBinding:
    prefix: --database
- id: in_processes
  doc: "Use multiple cores for downloading genomes and kraken\nif -kp is not set"
  type: boolean?
  inputBinding:
    prefix: --processes
- id: in_download
  doc: Download additional sequences
  type: boolean?
  inputBinding:
    prefix: --download
- id: in_representative
  doc: Download GTDB representative genomes
  type: boolean?
  inputBinding:
    prefix: --representative
- id: in_rep_path
  doc: Specify GTDB representative version URL full path
  type: File?
  inputBinding:
    prefix: --rep_path
- id: in_force_download
  doc: "Download sequences from genbank if not in refseq\n(WARNING: might include\
    \ genome withdrawals)"
  type: boolean?
  inputBinding:
    prefix: --force_download
- id: in_genomes_path
  doc: path to genomes
  type: boolean?
  inputBinding:
    prefix: --genomes_path
- id: in_create_db
  doc: Start create db after loading databases
  type: boolean?
  inputBinding:
    prefix: --create_db
- id: in_db_program
  doc: "Select one of the supported programs [kraken2,\nkrakenuniq, ganon]"
  type: boolean?
  inputBinding:
    prefix: --dbprogram
- id: in_db_name
  doc: database directory (fullpath)
  type: boolean?
  inputBinding:
    prefix: --db_name
- id: in_params
  doc: Add extra params to create command (supports kraken*)
  type: boolean?
  inputBinding:
    prefix: --params
- id: in_test
  doc: test database structure, only use 100 seqs
  type: boolean?
  inputBinding:
    prefix: --test
- id: in_keep
  doc: Keep temporary files
  type: boolean?
  inputBinding:
    prefix: --keep
- id: in_skip
  doc: "Do not include genomes within this taxonomy (child\ntree) in the database\
    \ (works for kraken)"
  type: boolean?
  inputBinding:
    prefix: --skip
- id: in_build_processes
  doc: "Use a different number of cores for kraken\nclassification"
  type: boolean?
  inputBinding:
    prefix: --build_processes
- id: in_logs
  doc: Specify log directory
  type: boolean?
  inputBinding:
    prefix: --logs
- id: in_verbose
  doc: Verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_debug
  doc: Debug output
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_supress
  doc: Supress warnings
  type: boolean?
  inputBinding:
    prefix: --supress
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: "Output directory (same directory as\ncustom_taxonomy_databases dump)"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/flextaxd:0.3.5--py_0
cwlVersion: v1.1
baseCommand:
- flextaxd-create

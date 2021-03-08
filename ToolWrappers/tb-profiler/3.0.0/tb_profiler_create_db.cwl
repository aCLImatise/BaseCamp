class: CommandLineTool
id: tb_profiler_create_db.cwl
inputs:
- id: in_prefix
  doc: "The input CSV file containing the mutations (default:\ntbdb)"
  type: File?
  inputBinding:
    prefix: --prefix
- id: in_csv
  doc: 'The prefix for all output files (default: tbdb.csv)'
  type: string?
  inputBinding:
    prefix: --csv
- id: in_watchlist
  doc: "A csv file containing genes to profile but without any\nspecific associated\
    \ mutations (default:\ntbdb.watchlist.csv)"
  type: File?
  inputBinding:
    prefix: --watchlist
- id: in_seqname
  doc: 'The prefix for all output files (default: Chromosome)'
  type: string?
  inputBinding:
    prefix: --seqname
- id: in_confidence
  doc: "A CSV containing gene, mutation, drug and confidence\ncolumns (default: tbdb.confidence.csv)"
  type: string?
  inputBinding:
    prefix: --confidence
- id: in_custom
  doc: "Tells the script this is a custom database, this is\nused to alter the generation\
    \ of the version file\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --custom
- id: in_db_name
  doc: "Overrides the name of the database in the version file\n(default: None)"
  type: File?
  inputBinding:
    prefix: --db-name
- id: in_db_commit
  doc: "Overrides the commit string of the database in the\nversion file (default:\
    \ None)"
  type: File?
  inputBinding:
    prefix: --db-commit
- id: in_db_author
  doc: "Overrides the author of the database in the version\nfile (default: None)"
  type: File?
  inputBinding:
    prefix: --db-author
- id: in_db_date
  doc: "Overrides the date of the database in the version file\n(default: None)\n"
  type: File?
  inputBinding:
    prefix: --db-date
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/tb-profiler:3.0.0--pypyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- tb-profiler
- create_db

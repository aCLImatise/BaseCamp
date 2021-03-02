class: CommandLineTool
id: falconc_raptor_db_subsample.cwl
inputs:
- id: in_help_syntax
  doc: 'advanced: prepend,plurals,..'
  type: boolean?
  inputBinding:
    prefix: --help-syntax
- id: in__rdbfn_string
  doc: =, --rdb_fn=         string  REQUIRED  Path to the RaptorDB file.
  type: boolean?
  inputBinding:
    prefix: -r
- id: in__genomesize_required
  doc: =, --genome_size=    int64   REQUIRED  Approximate genome size.
  type: boolean?
  inputBinding:
    prefix: -g
- id: in__coverage_float
  doc: =, --coverage=       float   REQUIRED  Coverage to select from the input
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_random_seed
  doc: =         int64   REQUIRED  Seed for random generation.
  type: boolean?
  inputBinding:
    prefix: --random-seed
- id: in__blocksizemb_float
  doc: =, --block-size-mb=  float   REQUIRED  Block size of the output DB, in
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_raptor_db_dot
  doc: -u, --use-umc          bool    REQUIRED  Use Unique Molecular Coverage when
  type: string
  inputBinding:
    position: 0
- id: in_megabytes_dot
  doc: -a=, --alarms-fn=      string  ""        Optional JSON file to write SMRT Link
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/nim-falcon:3.0.2--h1341992_0
cwlVersion: v1.1
baseCommand:
- falconc
- raptor-db-subsample

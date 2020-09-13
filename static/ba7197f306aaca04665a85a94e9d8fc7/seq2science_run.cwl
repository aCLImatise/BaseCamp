class: CommandLineTool
id: ../../../seq2science_run.cwl
inputs:
- id: in_config_file
  doc: The path to the config file.
  type: File
  inputBinding:
    prefix: --configfile
- id: in_cores
  doc: Use at most N cores in parallel. Must be at least 2.
  type: long
  inputBinding:
    prefix: --cores
- id: in_dry_run
  doc: Do not execute anything, and display what would be
  type: boolean
  inputBinding:
    prefix: --dryrun
- id: in_snake_make_options
  doc: "=VAL [KEY=VAL ...]\nExtra arguments to pass along to snakemake. An example\n\
    could be seq2science run alignment --cores 12\n--snakemakeOptions resources={mem_gb:100}\n\
    local_cores=3. Here we pass local_cores as KEY=VALUE\nand additional resources\
    \ can even be passed along in a\ndictionary. Take a look at the snakemake API\
    \ for a\ncomplete list of all possible options: https://snakema\nke.readthedocs.io/en/latest/api_reference/snakemake.ht\n\
    ml"
  type: long
  inputBinding:
    prefix: --snakemakeOptions
- id: in_profile
  doc: "NAME\nUse a snakemake/seq2science profile. Profiles can be\ntaken from: https://github.com/snakemake-profiles"
  type: long
  inputBinding:
    prefix: --profile
- id: in_keep_going
  doc: Go on with independent jobs if a job fails.
  type: boolean
  inputBinding:
    prefix: --keep-going
- id: in_rerun_incomplete
  doc: "Re-run all jobs the output of which is recognized as\nincomplete.\n"
  type: boolean
  inputBinding:
    prefix: --rerun-incomplete
- id: in_unlock
  doc: ''
  type: boolean
  inputBinding:
    prefix: --unlock
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- seq2science
- run

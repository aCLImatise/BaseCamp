class: CommandLineTool
id: wg_blimp_run_snakemake_from_config.cwl
inputs:
- id: in_dry_run
  doc: Only dry-run the workflow.
  type: boolean
  inputBinding:
    prefix: --dry-run
- id: in_cores
  doc: "The maximum number of cores to use for running the\npipeline. Cores per job\
    \ are set in configuration file.\n[required]"
  type: long
  inputBinding:
    prefix: --cores
- id: in_config_yaml
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- wg-blimp
- run-snakemake-from-config

class: CommandLineTool
id: tritimap_run.cwl
inputs:
- id: in_working_dir
  doc: Triti-Map running directory.
  type: File?
  inputBinding:
    prefix: --working-dir
- id: in_config_file
  doc: Triti-Map config file, generated with tritimap init.
  type: File?
  inputBinding:
    prefix: --config-file
- id: in_jobs
  doc: Use at most N CPU cores/jobs in parallel.
  type: long?
  inputBinding:
    prefix: --jobs
- id: in_dry_run
  doc: Do not execute anything, and display what would be
  type: boolean?
  inputBinding:
    prefix: --dryrun
- id: in_profile
  doc: Name of profile to use for configuring Snakemake.
  type: string?
  inputBinding:
    prefix: --profile
- id: in_done_dot
  doc: '[default: False]'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/tritimap:0.9.0--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- tritimap
- run

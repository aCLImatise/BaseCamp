class: CommandLineTool
id: atlas_run.cwl
inputs:
- id: in_working_dir
  doc: location to run atlas.
  type: File?
  inputBinding:
    prefix: --working-dir
- id: in_config_file
  doc: config-file generated with 'atlas init'
  type: File?
  inputBinding:
    prefix: --config-file
- id: in_jobs
  doc: "use at most this many jobs in parallel (see cluster\nsubmission for mor details)."
  type: long?
  inputBinding:
    prefix: --jobs
- id: in_profile
  doc: snakemake profile e.g. for cluster execution.
  type: string?
  inputBinding:
    prefix: --profile
- id: in_dry_run
  doc: 'Test execution.  [default: False]'
  type: boolean?
  inputBinding:
    prefix: --dryrun
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/metagenome-atlas:2.4.5--py_0
cwlVersion: v1.1
baseCommand:
- atlas
- run

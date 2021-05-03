class: CommandLineTool
id: wg_blimp_run_snakemake_from_config.cwl
inputs:
- id: in_dry_run
  doc: Only dry-run the workflow.
  type: boolean?
  inputBinding:
    prefix: --dry-run
- id: in_cores
  doc: "The maximum number of cores to use for running the\npipeline. Cores per job\
    \ are set in configuration file. In\ncluster mode, this sets cores used per node.\
    \  [required]"
  type: long?
  inputBinding:
    prefix: --cores
- id: in_cluster
  doc: "Submission command snakemake uses for cluster usage.\nSetting this parameter\
    \ enables snakemake's cluster mode."
  type: string?
  inputBinding:
    prefix: --cluster
- id: in_nodes
  doc: Number of nodes to use in cluster mode.
  type: long?
  inputBinding:
    prefix: --nodes
- id: in_config_yaml
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/wg-blimp:0.9.8--pyh5e36f6f_0
cwlVersion: v1.1
baseCommand:
- wg-blimp
- run-snakemake-from-config

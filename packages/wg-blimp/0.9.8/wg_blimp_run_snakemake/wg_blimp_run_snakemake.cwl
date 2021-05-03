class: CommandLineTool
id: wg_blimp_run_snakemake.cwl
inputs:
- id: in_dry_run
  doc: Only dry-run the pipeline.
  type: boolean?
  inputBinding:
    prefix: --dry-run
- id: in_use_sample_files
  doc: "Load sample names from text files instead of\npassing them as a comma-seperated\
    \ list."
  type: boolean?
  inputBinding:
    prefix: --use-sample-files
- id: in_cores
  doc: "The number of cores to use for running the\npipeline. In cluster mode, this\
    \ sets cores\nused per node.  [required]"
  type: long?
  inputBinding:
    prefix: --cores
- id: in_genome_build
  doc: "[hg19|hg38|mmul10]\nBuild of the reference used for annotation."
  type: boolean?
  inputBinding:
    prefix: --genome_build
- id: in_cluster
  doc: "Submission command snakemake uses for\ncluster usage. Setting this parameter\n\
    enables snakemake's cluster mode."
  type: string?
  inputBinding:
    prefix: --cluster
- id: in_nodes
  doc: Number of nodes to use in cluster mode.
  type: long?
  inputBinding:
    prefix: --nodes
- id: in_fast_q_dir
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_reference_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_group_one
  doc: ''
  type: long
  inputBinding:
    position: 2
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
- run-snakemake

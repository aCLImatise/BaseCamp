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
  doc: The number of cores to use for running the
  type: long?
  inputBinding:
    prefix: --cores
- id: in_genome_build
  doc: "[hg19|hg38|mmul10]\nBuild of the reference used for annotation."
  type: boolean?
  inputBinding:
    prefix: --genome_build
- id: in_pipeline_dot
  doc: '[required]'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/wg-blimp:0.9.7--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- wg-blimp
- run-snakemake

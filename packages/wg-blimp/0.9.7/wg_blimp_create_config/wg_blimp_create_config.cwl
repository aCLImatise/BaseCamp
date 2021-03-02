class: CommandLineTool
id: wg_blimp_create_config.cwl
inputs:
- id: in_genome_build
  doc: "[hg19|hg38|mmul10|None]\nBuild of the reference used for annotation."
  type: boolean?
  inputBinding:
    prefix: --genome_build
- id: in_cores_per_job
  doc: "The number of cores to use per job.\n[required]"
  type: long?
  inputBinding:
    prefix: --cores-per-job
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
  dockerPull: quay.io/biocontainers/wg-blimp:0.9.7--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- wg-blimp
- create-config

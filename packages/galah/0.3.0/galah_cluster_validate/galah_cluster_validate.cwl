class: CommandLineTool
id: galah_cluster_validate.cwl
inputs:
- id: in_ani
  doc: 'ANI to validate against [default: 99]'
  type: long?
  inputBinding:
    prefix: --ani
- id: in_cluster_file
  doc: Output of 'cluster' subcommand
  type: File?
  inputBinding:
    prefix: --cluster-file
- id: in_min_aligned_fraction
  doc: 'Min aligned fraction of two genomes for clustering [default: 50]'
  type: long?
  inputBinding:
    prefix: --min-aligned-fraction
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/galah:0.3.0--h516909a_0
cwlVersion: v1.1
baseCommand:
- galah
- cluster-validate

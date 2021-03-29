class: CommandLineTool
id: stacks_count_reads_per_sample_per_locus.cwl
inputs:
- id: in_stacks_de_novo_dir
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
  dockerPull: quay.io/biocontainers/stacks:2.55--he513fc3_0
cwlVersion: v1.1
baseCommand:
- stacks-count-reads-per-sample-per-locus

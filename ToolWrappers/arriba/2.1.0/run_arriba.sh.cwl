class: CommandLineTool
id: run_arriba.sh.cwl
inputs:
- id: in_star_genome_dir
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
  dockerPull: quay.io/biocontainers/arriba:2.1.0--hd2e4403_0
cwlVersion: v1.1
baseCommand:
- run_arriba.sh

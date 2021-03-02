class: CommandLineTool
id: bpipe_slurm.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bpipe:0.9.10--0
cwlVersion: v1.1
baseCommand:
- bpipe-slurm.sh

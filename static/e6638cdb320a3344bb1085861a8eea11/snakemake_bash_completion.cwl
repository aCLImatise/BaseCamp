class: CommandLineTool
id: snakemake_bash_completion.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/snakemake-minimal:6.1.0--pyhdfd78af_1
cwlVersion: v1.1
baseCommand:
- snakemake-bash-completion

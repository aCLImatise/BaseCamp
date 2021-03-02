class: CommandLineTool
id: snakemake_bash_completion.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/snakemake-minimal:5.32.2--py_0
cwlVersion: v1.1
baseCommand:
- snakemake-bash-completion

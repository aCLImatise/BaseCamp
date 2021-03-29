class: CommandLineTool
id: bioconda_utils_bot.cwl
inputs:
- id: in_loglevel
  doc: "Log level (default: 'info')"
  type: string?
  inputBinding:
    prefix: --loglevel
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bioconda-utils:0.16.23--py_0
cwlVersion: v1.1
baseCommand:
- bioconda-utils
- bot

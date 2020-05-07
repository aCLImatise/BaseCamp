class: CommandLineTool
id: bioconda_utils_bot.cwl
inputs:
- id: loglevel
  doc: "Log level (default: 'info')"
  type: string
  inputBinding:
    prefix: --loglevel
outputs: []
cwlVersion: v1.1
baseCommand:
- bioconda-utils
- bot

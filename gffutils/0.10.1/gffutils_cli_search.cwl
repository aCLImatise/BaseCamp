class: CommandLineTool
id: ../../../gffutils_cli_search.cwl
inputs:
- id: feature_type
  doc: 'Restrict to a particular featuretype. This can be faster than doing a grep
    on the output, since it restricts the search space in the database (default: -)'
  type: string
  inputBinding:
    prefix: --featuretype
outputs: []
cwlVersion: v1.1
baseCommand:
- gffutils-cli
- search

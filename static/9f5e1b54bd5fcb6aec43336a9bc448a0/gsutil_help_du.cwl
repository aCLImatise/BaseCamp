class: CommandLineTool
id: gsutil_help_du.cwl
inputs:
- id: a
  doc: Includes non-current object versions / generations in the listing (only useful
    with a versioning-enabled bucket). Also prints generation and metageneration for
    each listed object.
  type: boolean
  inputBinding:
    prefix: -a
- id: c
  doc: Includes a grand total at the end of the output.
  type: boolean
  inputBinding:
    prefix: -c
- id: e
  doc: 'A pattern to exclude from reporting. Example: -e "*.o" would exclude any object
    that ends in ".o". Can be specified multiple times.'
  type: boolean
  inputBinding:
    prefix: -e
- id: s
  doc: Displays only the grand total for each argument.
  type: boolean
  inputBinding:
    prefix: -s
- id: x
  doc: Similar to -e, but excludes patterns from the given file. The patterns to exclude
    should be one per line.
  type: boolean
  inputBinding:
    prefix: -X
outputs: []
cwlVersion: v1.1
baseCommand:
- gsutil
- help
- du

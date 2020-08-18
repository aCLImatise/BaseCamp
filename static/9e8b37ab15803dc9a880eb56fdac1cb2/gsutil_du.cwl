class: CommandLineTool
id: ../../../gsutil_du.cwl
inputs:
- id: ends_output_line
  doc: Ends each output line with a 0 byte rather than a newline. This can be useful
    to make the output more easily machine-readable.
  type: boolean
  inputBinding:
    prefix: '-0'
- id: includes_noncurrent_object
  doc: Includes non-current object versions / generations in the listing (only useful
    with a versioning-enabled bucket). Also prints generation and metageneration for
    each listed object.
  type: boolean
  inputBinding:
    prefix: -a
- id: includes_grand_total
  doc: Includes a grand total at the end of the output.
  type: boolean
  inputBinding:
    prefix: -c
- id: pattern_exclude_reporting
  doc: 'A pattern to exclude from reporting. Example: -e "*.o" would exclude any object
    that ends in ".o". Can be specified multiple times.'
  type: boolean
  inputBinding:
    prefix: -e
- id: displays_only_total
  doc: Displays only the grand total for each argument.
  type: boolean
  inputBinding:
    prefix: -s
- id: similar_excludes_patterns
  doc: Similar to -e, but excludes patterns from the given file. The patterns to exclude
    should be one per line.
  type: boolean
  inputBinding:
    prefix: -X
outputs: []
cwlVersion: v1.1
baseCommand:
- gsutil
- du

class: CommandLineTool
id: gsutil_du.cwl
inputs:
- id: in_ends_output_line
  doc: "Ends each output line with a 0 byte rather than a newline. This\ncan be useful\
    \ to make the output more easily machine-readable."
  type: boolean
  inputBinding:
    prefix: '-0'
- id: in_includes_object_versions
  doc: "Includes non-current object versions / generations in the listing\n(only useful\
    \ with a versioning-enabled bucket). Also prints\ngeneration and metageneration\
    \ for each listed object."
  type: boolean
  inputBinding:
    prefix: -a
- id: in_includes_grand_total
  doc: Includes a grand total at the end of the output.
  type: boolean
  inputBinding:
    prefix: -c
- id: in_pattern_exclude_reporting
  doc: "A pattern to exclude from reporting. Example: -e \"*.o\" would\nexclude any\
    \ object that ends in \".o\". Can be specified multiple\ntimes."
  type: boolean
  inputBinding:
    prefix: -e
- id: in_displays_only_total
  doc: Displays only the grand total for each argument.
  type: boolean
  inputBinding:
    prefix: -s
- id: in_similar_excludes_patterns
  doc: "Similar to -e, but excludes patterns from the given file. The\npatterns to\
    \ exclude should be one per line."
  type: boolean
  inputBinding:
    prefix: -X
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gsutil
- du
